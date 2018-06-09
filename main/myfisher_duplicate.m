function [Pout,h]=myfisher_duplicate(x,varargin)

%显著性检验——fisher精确检验,是在matlab代码交换区下载的一个大神的代码，然后做了一点点修改

P=-1;
p = inputParser;
addRequired(p,'x',@(x) validateattributes(x,{'numeric'},{'real','finite','integer','nonnegative','nonnan','2d'}));
addOptional(p,'delta',0.01, @(x) validateattributes(x,{'numeric'},{'scalar','real','finite','nonnan','>',0,'<',1}));
addOptional(p,'alpha',0.01, @(x) validateattributes(x,{'numeric'},{'scalar','real','finite','nonnan','>',0,'<',1}));
parse(p,x,varargin{:});
alpha=p.Results.alpha; delta=p.Results.delta;
clear p

%chech if you can use a previously written function of mine
[rows,columns]=size(x);
if rows==2 
%     P=myfisher22(x);
    [h,p]=fishertest(x);
    P=p;
else
    clear rows columns
  
    C=sum(x); %columns sums
    R=sum(x,2); %rows sums
    N=sum(x(:)); %sum of all cells
    Kf=sum(gammaln([R' C]+1))-gammaln(N+1); %The costant factor K=log(prod(R!)*prod(C!)/N!)
    zf=gammaln(x+1); %compute log(x!)
    op=exp(Kf-sum(zf(:))); %compute the p-value of the observed matrix

    %Each matrix can be transformed into a Nx2 matrix:
    % Example:
    %                                       Sex
    %                                Male         Female  R
    %                              ---------------------
    %                    Recovered |   3      |     6   | 9
    %              Response        |----------|---------|
    %                    Deceased  |   8      |     2   | 10
    %                              ---------------------
    %                            C    11           8      19 N
    %
    % In the first cell (R=1 C=1) there are 3 elements;
    % In the second cell (R=1 C=2) there are 6 elements; and so on
    % We can construct this 19x2 matrix:
    % table =
    % 
    %      1     1
    %      1     1
    %      1     1
    %      1     2
    %      1     2
    %      1     2
    %      1     2
    %      1     2
    %      1     2
    %      2     1
    %      2     1
    %      2     1
    %      2     1
    %      2     1
    %      2     1
    %      2     1
    %      2     1
    %      2     2
    %      2     2

    r=1:1:length(R); %create the base array for the first column of the Nx2 matrix
    %(using the example r = 1 2)
    c=repmat(1:1:length(C),1,size(x,1)); %create the base array for the second column of the Nx2 matrix
    %(using the example c = 1 2 1 2)
    table=zeros(N,2); %Nx2 matrix preallocation
    
    table(:,1)=rldecode(R',r); %expand the r array and put it in the first column
    %(using the example the rows sums R = 9 10 and r = 1 2; so we must expand r in
    %this way: 1 must be expanded 9 times and 2 must be expanded 10 times).
    
    tmp=reshape(x',1,[]); %create an array concatenating elements by rows (thanks Jos!)
    %(using the example tmp = 3 6 8 2)
    table(:,2)=rldecode(tmp,c); %expand the c array and put it in the second column
    %(using the example the rows sums c = 1 2 1 2 and tmp=3 6 8 2; so we must expand c in
    %this way: 1 must be expanded 3 times, 2 must be expanded 6 times, 1 must be expanded 8 times and 2 must be expanded 2 times).
    clear R r C c tmp %clear the useless variables

    %Now the Monte Carlo algotithm starts: shuffling the second column we will
    %obtain a new x matrix with the same rows and columns sums of the original.

    %tbs=simulation size to ensure that p-value is within delta units of the true
    %one with (1-alpha)*100% confidence. Psycometrika 1979; Vol.44:75-83.
    tbs=round(((-realsqrt(2)*erfcinv(2-alpha))/(2*delta))^2);
    MCC=0; %Monte Carlo counter
    for I=1:tbs
        %shuffle the second column of table using the Fisher-Yates shuffle Sattolo's
        %version. This is faster than Matlab RANDPERM: to be clearer: Fisher-Yates
        %is O(n) while Randperm is O(nlog(n))
        for J=N:-1:2
            s=ceil((J-1).*rand);
            tmp=table(s,2); table(s,2)=table(J,2); table(J,2)=tmp;
        end
        g=zeros(size(x)); %Construct a new table
        %This cycle is faster than Matlab ACCUMARRAY.
        for J=1:N
            g(table(J,1),table(J,2))=g(table(J,1),table(J,2))+1; %add one to the cell
        end
        zf=gammaln(g+1); %compute log(x!)
        gpv=exp(Kf-sum(zf(:))); %compute the p-value of the new matrix
        if gpv<=op %if the current p-value is less or equal than the observed p-value...
            MCC=MCC+1; %update the counter
        end
    end
    P=MCC/tbs; %Monte Carlo p-value
    
end
if nargout
    Pout=P;
    if P<0.05
        h=1;
    else
        h=0;
    end
end
end

function y = rldecode(len, val)
%RLDECODE Run-length decoding of run-length encode data.
%
%   X = RLDECODE(LEN, VAL) returns a vector XLEN with the length of each run
%   and a vector VAL with the corresponding values.  LEN and VAL must have the
%   same lengths.
%
%   Example: rldecode([ 2 3 1 2 4 ], [ 6 4 5 8 7 ]) will return
%
%      x = [ 6 6 4 4 4 5 8 8 7 7 7 7 ];
%
%   See also RLENCODE.

%   Author:      Peter J. Acklam
%   Time-stamp:  2002-03-03 13:50:38 +0100
%   E-mail:      pjacklam@online.no
%   URL:         http://home.online.no/~pjacklam

% keep only runs whose length is positive
KK = len > 0;
len = len(KK);
val = val(KK);

% now perform the actual run-length decoding
II = cumsum(len);             % LENGTH(LEN) flops
JJ = zeros(1, II(end));
JJ(II(1:end-1)+1) = 1;         % LENGTH(LEN) flops
JJ(1) = 1;
y = val(cumsum(JJ));          % SUM(LEN) flops
end
