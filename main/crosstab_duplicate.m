function [table, chi2, p, h,isfisher,labels] = crosstab_duplicate(varargin)

%�����Լ��顪���������麯����������Ƥ��ɭ�����Ҷ������У��������matlab�Դ�����crosstab�Ļ��������˵�С�Ķ�

%CROSSTAB Cross-tabulation of vectors.
%   TABLE = CROSSTAB(X1,X2,...) takes categorical variables, vectors,
%   string arrays, or cell arrays of strings, and returns an array, TABLE,
%   of crosstabs.
%
%   If X1 is a numeric vector taking all values 1,2,...,M, and X2 is a
%   numeric vector taking all values 1,2,...,N, then TABLE is an M-by-N
%   matrix with TABLE(I,J) equal to the number of rows with X1=I and X2=J.
%
%   In the general case, all inputs must have the same length.  The set of
%   values for each input and the order given to them are as defined by the
%   GRP2IDX function.  The number of dimensions of the output TABLE is
%   equal to the number of inputs.
%
%   [TABLE,CHI2,P] = CROSSTAB(...) also returns the chisquare statistic,
%   CHI2, for testing independence of each dimension of TABLE. (That is,
%   that the proportion of items falling in any cell is equal to the
%   product of the proportion in that row, and the proportion in that
%   column, and so on.)  The scalar, P, is the p-value of the test.  Values
%   of P near zero cast doubt on the assumption of independence.
%
%   [TABLE,CHI2,P,LABELS] = CROSSTAB(...) also returns a cell array of
%   labels for TABLE.  The entries in the first column of LABELS are labels
%   for the rows of TABLE, the entries in the second column are labels for
%   the columns, and so on.
%
%   Examples:
%       % 1.  Simple cross-tabulation of two vectors
%       x = [1 1 2 3 1]; y = [1 2 5 3 1];
%       crosstab(x,y)
%
%       % 2.  Cross-tabulate sex and smoking for a set of hospital
%       %     patients, and perform a chi-square test for independence.
%       load hospital
%       [tbl,chi2,p] = crosstab(hospital.Sex, hospital.Smoker)

%   Copyright 1993-2015 The MathWorks, Inc.
sz = zeros(1,nargin);
if (nargout > 3), labels = cell(0, nargin); end
nonan = [];
M = [];
for j=1:nargin
    [g1,g2] = grp2idx(varargin{j});
    ng = size(g2,1);
    if (nargout > 3), labels(1:ng,j) = g2; end
    sz(j) = ng;
    n = length(g1);
    if (j == 1)
        n1 = n;
        nonan = ~isnan(g1);
        M = zeros(n,nargin);
        M(:,1) = g1;
    elseif (n ~= n1)
        error(message('stats:crosstab:InputSizeMismatch'));
    else
        nonan = nonan & ~isnan(g1);
        M(:,j) = g1;
    end
end

M = M(nonan,:);
n = size(M,1);

table = accumarray(M,1);

% Pad the table with zeros for empty levels in categorical arrays.
dopad = false;
idx = cell(numel(sz),1);
for j=1:numel(sz)
    if size(table,j)==sz(j)
        idx{j} = ':';
    else
        dopad = true;
        idx{j} = size(table,j)+1:sz(j);
    end
end
if dopad
    table(idx{:}) = 0;
end

if (nargout > 1) && (sum(sz>1) > 1)
    % Remove degenerate dimensions
    if any(sz==1)
        sz = sz(sz>1);
        T = reshape(table,sz);
    else
        T = table;
    end
    
    expected = zeros(sz);
    expected(:) = n;
    szv = sz;
    permv = [(2:length(sz)) 1];
    for j = 1:nargin
        sz1 = szv(1);
        sz2 = prod(szv(2:end));
        frac = sum(reshape(T, sz1, sz2), 2) / n;
        frac = reshape(repmat(frac,1,sz2),szv);
        expected = expected .* frac;
        expected = shiftdim(expected, 1);
        szv = szv(permv);
        T = shiftdim(T, 1);
    end
    isfisher=false;
    isContinuityCorrection=false;
    %�ж���Person����ORҶ������У������OR Fisher��ȷ����
    for i=1:2
        for j=1:2
            if expected(i,j)<1
                isfisher=true;
                break;
            elseif expected(i,j)>=1&&expected(i,j)<5
                isContinuityCorrection=true;
                break;
            end
        end
    end
    
    df = prod(sz) - (1 + sum(sz - 1));
    if ~isContinuityCorrection           %һ�㿨������
        chi2 = (T - expected).^ 2 ./ expected;
        chi2 = sum(chi2(:));
        p = 1-chi2cdf(chi2,df);
        if abs(p-0.05)<=0.005       %����PԼ����0.05����fisher��ȷ����
            isfisher=true;
        end
    else                %����У��
        chi2 = (abs(T - expected) - 0.5).^ 2 ./ expected;
        chi2 = sum(chi2(:));
        p = 1-chi2cdf(chi2,df);
    end
    if p<0.05
        h=1;
    else
        h=0;
    end
    
elseif (nargout > 1)      % nargin <= 1         %�Ա���ֻ��һ��ʱ
    chi2 = NaN;
    p = NaN;
    h = 0;
    isfisher= false;
end