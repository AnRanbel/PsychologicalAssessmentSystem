function varargout = psychologicalAssessment_duplicate(varargin)
clear;
clc;

h=splash('.\images\background.png');      %ϵͳ��ʼ������

%����java��
import javax.swing.*;

global handles;     %�ṹ�壨��������ľ����Դ�ļ�·���ȣ�
handles.file1='';
handles.file2='';
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows����icon

%% ���ˡ����ϴ�Դ����(������)
individual_figure_1=figure('Name','������״������ϵͳ����INDIVIDUAL','Units','normalized',...
    'position',[(1-0.441)/2 (1-0.393)/2 0.441 0.393],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame2 = get(individual_figure_1,'JavaFrame');
figFrame2.setFigureIcon(newIcon);
uipanel_individual_1=uipanel(individual_figure_1,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.017 0.04 0.957 0.927],'Tag','uipanel_individual_1',...
    'Title','�ϴ�Դ����','Visible','on','FontWeight','bold');
handles.uipanel_individual_1=uipanel_individual_1;
pushbutton_individual_1_1=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',9.0,'Units','normalized',...
    'Position',[0.045 0.801 0.171 0.124],'Tag','pushbutton_individual_1_1',...
    'String','���������','Visible','on','Interruptible','off','BusyAction','cancel');
edit_individual_1_1=uicontrol(uipanel_individual_1,'Style','edit','FontSize',10.0,...
    'Units','normalized','Position',[0.305 0.798 0.618 0.12],'Tag','edit_individual_1_1',...
    'Visible','on','Enable','inactive','BackgroundColor',[.831 .816 .784 1],...
    'String','Excel�ļ���·����������水ťѡ�񣬲�֧��ֱ�����룩','ForegroundColor',[0.314 0.314 0.314 0.314]);
handles.edit_individual_1_1=edit_individual_1_1;
pushbutton_individual_1_2=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',12.0,'Units','normalized',...
    'Position',[0.682 0.584 0.239 0.142],'Tag','pushbutton_individual_1_2','String','�ϴ�����',...
    'Visible','on','Interruptible','off','BusyAction','cancel','FontWeight','bold');
text_individual_1_1=uicontrol(uipanel_individual_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.047 0.416 0.3 0.101],'Tag','text_individual_1_1',...
    'String','����������ϴ�ʧ�ܣ�','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[1 0 0 1]');
handles.text_individual_1_1=text_individual_1_1;
text_individual_1_2=uicontrol(uipanel_individual_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.047 0.416 0.3 0.101],'Tag','text_individual_1_2',...
    'String','����������ϴ��ɹ���','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[.153 .227 .373 1]');
handles.text_individual_1_2=text_individual_1_2;
pushbutton_individual_1_3=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.215 0.142 0.201 0.127],'Tag','pushbutton_individual_1_3',...
    'String','������ʾ','Visible','on','Interruptible','off','BusyAction','cancel',...
    'Callback',@help_individual_1);
pushbutton_individual_1_4=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.476 0.142 0.201 0.127],'Tag','pushbutton_individual_1_4','FontWeight','bold',...
    'String','<< ��һ��','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_individual_1_5=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.736 0.142 0.201 0.127],'Tag','pushbutton_individual_1_5','FontWeight','bold',...
    'String','��һ�� >>','Visible','on','Interruptible','off','BusyAction','cancel');
% handles.pushbutton_individual_1_5=pushbutton_individual_1_5;
handles.individual_figure_1=individual_figure_1;

%% �������鱨����桪��Part1
individual_figure_2=figure('Name','������챨�桪��Part1','Units','normalized',...
    'position',[(1-0.928)/2 (1-0.635)/2 0.928 0.635],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame3 = get(individual_figure_2,'JavaFrame');
figFrame3.setFigureIcon(newIcon);
uipanel_individual_2=uipanel(individual_figure_2,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.003 0.006 0.992 0.982],'Tag','uipanel_individual_2',...
    'Title','90��֢״��������SCL-90�������������Part1','Visible','on','FontWeight','bold');
uipanel_individual_2_1=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.006 0.011 0.204 0.951],'Tag','uipanel_individual_2_1',...
    'Title','�������','Visible','on','FontWeight','bold');
uipanel_individual_2_2=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.215 0.009 0.781 0.953],'Tag','uipanel_individual_2_2',...
    'Title','���Խ��','Visible','on','FontWeight','bold');
text_individual_2_1=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.076 0.905 0.238 0.046],'Tag','text_individual_2_1',...
    'String','������','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
text_individual_2_2=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.249 0.899 0.71 0.052],'Tag','text_individual_2_2',...
    'String','����','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
handles.text_individual_2_2=text_individual_2_2;
text_individual_2_3=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.075 0.851 0.237 0.046],'Tag','text_individual_2_3',...
    'String','�Ա�','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
text_individual_2_4=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.257 0.855 0.191 0.042],'Tag','text_individual_2_4',...
    'String','�Ա�','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
handles.text_individual_2_4=text_individual_2_4;
text_individual_2_5=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.498 0.856 0.195 0.041],'Tag','text_individual_2_5',...
    'String','���䣺','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
text_individual_2_6=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.705 0.858 0.183 0.039],'Tag','text_individual_2_6',...
    'String','����','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
handles.text_individual_2_6=text_individual_2_6;
uipanel_individual_2_1_1=uipanel(uipanel_individual_2_1,'FontSize',10,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.028 0.019 0.952 0.812],'Tag','uipanel_individual_2_1_1',...
    'Title','��ܰ��ʾ','Visible','on','FontAngle','italic');
s=['��ȫ����ģ���������������һ��׼���ɿ���ɸ�����ԣ����һ����飺' char(10) '1���ֳܷ���160�֣�' char(10) '2��������Ŀ������43�' char(10) '3����һ���ӷֳ���2�֡�' char(10) '����250����Ƚ����أ���Ҫ��ҽѧ�ϵ���ϸ��飬�ܿ���Ҫ������Ե��������ƻ���ҽ����ָ���·�ҩ��' char(10) '*������ϵͳ���������۵ȼ���Ϊ�Ĵ��ࣺ����̬���ǽ���һ̬�ȡ��ǽ�����̬������̬�����������ηֳ�3����16����13����19��������51��������Խ�ߣ��뽡��̬ԽԶ��'];
text_individual_2_7=uicontrol(uipanel_individual_2_1_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.025 0.042 0.953 0.935],'Tag','text_individual_2_7',...
    'String',s,'HorizontalAlignment','left','Visible','on','ForegroundColor',[.153 .227 .373 1]);
axes_individual_2_1=axes(uipanel_individual_2_2,'Units','normalized','OuterPosition',[-0.053 0.13 0.865 0.851],...
    'Position',[0.047 0.255 0.692 0.64],'Tag','axes_individual_2_1','Visible','on',...
    'Box','on');
handles.axes_individual_2_1=axes_individual_2_1;
pushbutton_individual_2_1=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.395 0.058 0.137 0.084],'Tag','pushbutton_individual_2_1',...
    'String','�ص���ҳ','Visible','on','Interruptible','off','BusyAction','cancel');
handles.pushbutton_individual_2_1=pushbutton_individual_2_1;
pushbutton_individual_2_2=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.584 0.058 0.137 0.084],'Tag','pushbutton_individual_2_2','FontWeight','bold',...
    'String','<< ��һ��','Visible','on','Interruptible','off','BusyAction','cancel');
handles.pushbutton_individual_2_2=pushbutton_individual_2_2;
pushbutton_individual_2_3=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.776 0.058 0.137 0.084],'Tag','pushbutton_individual_2_3','FontWeight','bold',...
    'String','��һ�� >>','Visible','on','Interruptible','off','BusyAction','cancel');
uitable_individual_2_1=uitable(uipanel_individual_2_2,'Units','normalized',...
    'Position',[0.761 0.346 0.217 0.540],'ColumnWidth',{42 'auto'});
handles.uitable_individual_2_1=uitable_individual_2_1;
handles.individual_figure_2=individual_figure_2;

%% �������鱨����桪��Part2
screenposition=get(0,'screensize');
x=(screenposition(3)-658)/2;
y=(screenposition(4)-467)/2;
individual_figure_3=uifigure('Name','������챨�桪��Part2','Position',[x y 656 442],...
    'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','Visible','off');
uipanel_individual_3=uipanel(individual_figure_3,'FontSize',15.33,'ForegroundColor',[.153 .227 .373 1],...
    'Position',[8 7 643 428],'Tag','uipanel_individual_3','Title','90��֢״��������SCL-90�������������Part2',...
    'Visible','on','FontWeight','bold');
label_individual_3_1=uilabel(uipanel_individual_3,'Position',[9 285 260 51],'FontSize',13.33...
    ,'FontColor',[.153 .227 .373]);
handles.label_individual_3_1=label_individual_3_1;
label_individual_3_2=uilabel(uipanel_individual_3,'Position',[354 312 52 23],'FontSize',13.33...
    ,'FontColor',[.153 .227 .373],'Text','�ܷ֣�');
textarea__individual_3_1=uitextarea(uipanel_individual_3,'HorizontalAlignment','left',...
    'Position',[10 9 523 266],'FontColor',[.153 .227 .373]','FontSize',13.33,'Editable','off');
handles.textarea__individual_3_1=textarea__individual_3_1;
pushbutton_individual_3_1=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
    'FontSize',14.0,'Position',[542 11 90 35],'FontWeight','bold','Text','<< ��һ��');
pushbutton_individual_3_2=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
    'FontSize',14.0,'Position',[542 72 90 35],'Text','�ص���ҳ','FontWeight','bold');
handles.pushbutton_individual_3_2=pushbutton_individual_3_2;
pushbutton_individual_3_3=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
    'FontSize',14.0,'Position',[263 285 60 60],'Text','');          %����ͼ��
handles.pushbutton_individual_3_3=pushbutton_individual_3_3;
gauge_individual_3_1=uigauge(uipanel_individual_3,'Limits',[0 450],...       %�Ǳ���
    'MajorTicks',[90:60:450],'MajorTickLabels',{'90','150','210','270','330','390','450'},...
    'MinorTicks',[90:12:450],'Value',0,'ScaleDirection','clockwise','FontSize',11,...
    'FontColor',[.153 .227 .373],'Position',[412 279 120 120],'ScaleColors',[1 0.84 0;1 0.27 0;0.86 0.08 0.24],...
    'ScaleColorLimits',[180 270;270 360;360 450]);
handles.gauge_individual_3_1=gauge_individual_3_1;
handles.individual_figure_3=individual_figure_3;

%% �Ŷӡ����ϴ�Դ����(������)
organization_figure_1=figure('Name','������״������ϵͳ����ORGANIZATION','Units','normalized',...
    'position',[(1-0.504)/2 (1-0.648)/2 0.504 0.648],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame5 = get(organization_figure_1,'JavaFrame');
figFrame5.setFigureIcon(newIcon);
uipanel_organization_1=uipanel(organization_figure_1,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.01 0.014 0.98 0.97],'Tag','uipanel_organization_1',...
    'Title','�ϴ�Դ����','Visible','on','FontWeight','bold');
handles.uipanel_organization_1=uipanel_organization_1;
pushbutton_organization_1_1=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',9.0,'Units','normalized',...
    'Position',[0.027 0.851 0.12 0.07],'Tag','pushbutton_organization_1_1',...
    'String','���������','Visible','on','Interruptible','off','BusyAction','cancel');
edit_organization_1_1=uicontrol(uipanel_organization_1,'Style','edit','FontSize',10.0,...
    'Units','normalized','Position',[0.272 0.851 0.528 0.068],'Tag','edit_organization_1_1',...
    'Visible','on','Enable','inactive','BackgroundColor',[.831 .816 .784 1],...
    'String','Excel�ļ���·����������水ťѡ�񣬲�֧��ֱ�����룩','ForegroundColor',[0.314 0.314 0.314 0.314]);
handles.edit_organization_1_1=edit_organization_1_1;
pushbutton_organization_1_2=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',12.0,'Units','normalized',...
    'Position',[0.6 0.664 0.204 0.081],'Tag','pushbutton_organization_1_2','String','�ϴ�����',...
    'Visible','on','Interruptible','off','BusyAction','cancel','FontWeight','bold');
text_organization_1_1=uicontrol(uipanel_organization_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.051 0.568 0.257 0.07],'Tag','text_organization_1_1',...
    'String','����������ϴ�ʧ�ܣ�','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[1 0 0 1]');
handles.text_organization_1_1=text_organization_1_1;
text_organization_1_2=uicontrol(uipanel_organization_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.051 0.568 0.257 0.07],'Tag','text_organization_1_2',...
    'String','����������ϴ��ɹ���','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[.153 .227 .373 1]');
handles.text_organization_1_2=text_organization_1_2;
pushbutton_organization_1_3=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.704 0.294 0.172 0.072],'Tag','pushbutton_organization_1_3',...
    'String','������ʾ','Visible','on','Interruptible','off','BusyAction','cancel',...
    'Callback',@help_organization_1);
pushbutton_organization_1_4=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.704 0.164 0.172 0.072],'Tag','pushbutton_organization_1_4','FontWeight','bold',...
    'String','<< ��һ��','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_1_5=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.704 0.034 0.172 0.072],'Tag','pushbutton_organization_1_5','FontWeight','bold',...
    'String','��һ�� >>','Visible','on','Interruptible','off','BusyAction','cancel');
listbox_organization_1_1=uicontrol(uipanel_organization_1,'Style','listbox','FontSize',10.0,...
    'Units','normalized','Position',[0.033 0.03 0.201 0.481],'Tag','listbox_organization_1_1',...
    'ForegroundColor','[.153 .227 .373 1]','Value',1.0);
handles.listbox_organization_1_1=listbox_organization_1_1;
pushbutton_organization_1_6=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.257 0.296 0.14 0.085],'Tag','pushbutton_organization_1_6','FontWeight','bold',...
    'String','---->','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_1_7=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.257 0.164 0.14 0.085],'Tag','pushbutton_organization_1_7','FontWeight','bold',...
    'String','<----','Visible','on','Interruptible','off','BusyAction','cancel');
listbox_organization_1_2=uicontrol(uipanel_organization_1,'Style','listbox','FontSize',10.0,...
    'Units','normalized','Position',[0.422 0.028 0.201 0.481],'Tag','listbox_organization_1_2',...
    'String','','ForegroundColor','[.153 .227 .373 1]','Value',1.0);
handles.listbox_organization_1_2=listbox_organization_1_2;
handles.organization_figure_1=organization_figure_1;

%% �Ŷӡ��������ط���
organization_figure_2=figure('Name','�����ط�������ORGANIZATION','Units','normalized',...
    'position',[(1-0.854)/2 (1-0.81)/2 0.854 0.81],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame6 = get(organization_figure_2,'JavaFrame');
figFrame6.setFigureIcon(newIcon);
uipanel_organization_2=uipanel(organization_figure_2,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.003 0.01 0.992 0.981],'Tag','uipanel_organization_2',...
    'Title','����ǽ���̬������������صĹ�ϵ','Visible','on','FontWeight','bold');
%��������
uipanel_organization_2_1=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.006 0.554 0.474 0.422],'Tag','uipanel_organization_2_1',...
    'Title','��������صĹ�ϵ','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_1=uipanel_organization_2_1;
text_organization_2_1=uicontrol(uipanel_organization_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.022 0.686 0.398 0.075],'Tag','text_organization_2_1',...
    'String','�Ա𡪡������Լ���','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
handles.text_organization_2_1=text_organization_2_1;
axes_organization_2_1=axes(uipanel_organization_2_1,'Units','normalized','OuterPosition',[0.313 0.552 0.312 0.394],...
    'Position',[0.444 0.674 0.085 0.188],'Tag','axes_organization_2_1','Visible','off');
handles.axes_organization_2_1=axes_organization_2_1;
uitable_organization_2_1=uitable(uipanel_organization_2_1,'Units','normalized',...
    'Position',[0.017 0.042 0.606 0.577],'Tag','uitable_organization_2_1');
handles.uitable_organization_2_1=uitable_organization_2_1;
pushbutton_organization_2_1=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.657 0.251 0.147 0.117],'Tag','pushbutton_organization_2_1','Enable','off',...
    'String','�Ա�','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_2=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.832 0.251 0.147 0.117],'Tag','pushbutton_organization_2_2','Enable','off',...
    'String','����','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_3=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.657 0.134 0.147 0.117],'Tag','pushbutton_organization_2_3','Enable','off',...
    'String','����״��','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_4=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.834 0.134 0.147 0.117],'Tag','pushbutton_organization_2_4','Enable','off',...
    'String','ְҵ','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_5=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.657 0.017 0.147 0.117],'Tag','pushbutton_organization_2_5','Enable','off',...
    'String','�Ը�����','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_6=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.834 0.017 0.147 0.117],'Tag','pushbutton_organization_2_6','Enable','off',...
    'String','�Ļ��̶�','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_5=axes(uipanel_organization_2_1,'Units','normalized','OuterPosition',[0.562 0.401 0.528 0.673],...
    'Position',[0.692 0.527 0.302 0.46],'Tag','axes_organization_2_5','Visible','off');
handles.axes_organization_2_5=axes_organization_2_5;
%��ͥ����
uipanel_organization_2_2=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.011 0.12 0.468 0.424],'Tag','uipanel_organization_2_2',...
    'Title','���ͥ���صĹ�ϵ','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_2=uipanel_organization_2_2;
text_organization_2_2=uicontrol(uipanel_organization_2_2,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.021 0.727 0.433 0.071],'Tag','text_organization_2_2',...
    'String','��ͥ��𡪡������Լ���','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
handles.text_organization_2_2=text_organization_2_2;
axes_organization_2_2=axes(uipanel_organization_2_2,'Units','normalized','OuterPosition',[0.324 0.589 0.324 0.381],...
    'Position',[0.463 0.704 0.084 0.188],'Tag','axes_organization_2_2','Visible','off');
handles.axes_organization_2_2=axes_organization_2_2;
uitable_organization_2_2=uitable(uipanel_organization_2_2,'Units','normalized',...
    'Position',[0.019 0.042 0.619 0.618],'Tag','uitable_organization_2_2');
handles.uitable_organization_2_2=uitable_organization_2_2;
pushbutton_organization_2_7=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.659 0.38 0.147 0.129],'Tag','pushbutton_organization_2_7','Enable','off',...
    'String','��ͥ���','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_8=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.828 0.38 0.147 0.129],'Tag','pushbutton_organization_2_8','Enable','off',...
    'String','��ͥ�˿���','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_9=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.659 0.209 0.147 0.129],'Tag','pushbutton_organization_2_9','Enable','off',...
    'String','��ͥ����','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_10=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.828 0.209 0.147 0.129],'Tag','pushbutton_organization_2_10','Enable','off',...
    'String','��ͥ����','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_11=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.659 0.038 0.147 0.134],'Tag','pushbutton_organization_2_11','Enable','off',...
    'String','ƶ����','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_12=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.828 0.038 0.147 0.129],'Tag','pushbutton_organization_2_12','Enable','off',...
    'String','��ͥ����','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_6=axes(uipanel_organization_2_2,'Units','normalized','OuterPosition',[0.564 0.527 0.525 0.531],...
    'Position',[0.694 0.632 0.3 0.356],'Tag','axes_organization_2_6','Visible','off');
handles.axes_organization_2_6=axes_organization_2_6;
%�������
uipanel_organization_2_3=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.484 0.568 0.505 0.41],'Tag','uipanel_organization_2_3',...
    'Title','��������صĹ�ϵ','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_3=uipanel_organization_2_3;
text_organization_2_3=uicontrol(uipanel_organization_2_3,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.022 0.75 0.404 0.078],'Tag','text_organization_2_3',...
    'String','����֪�����ѡ��������Լ���','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
handles.text_organization_2_3=text_organization_2_3;
axes_organization_2_3=axes(uipanel_organization_2_3,'Units','normalized','OuterPosition',[0.33 0.626 0.286 0.405],...
    'Position',[0.451 0.752 0.078 0.194],'Tag','axes_organization_2_3','Visible','off');
handles.axes_organization_2_3=axes_organization_2_3;
uitable_organization_2_3=uitable(uipanel_organization_2_3,'Units','normalized',...
    'Position',[0.017 0.037 0.574 0.67],'Tag','uitable_organization_2_3');
handles.uitable_organization_2_3=uitable_organization_2_3;
pushbutton_organization_2_13=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.607 0.323 0.173 0.142],'Tag','pushbutton_organization_2_13','Enable','off',...
    'String','����֪������','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_14=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.791 0.328 0.173 0.142],'Tag','pushbutton_organization_2_14','Enable','off',...
    'String','�����Ƿ񵥵�','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_15=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.607 0.177 0.173 0.142],'Tag','pushbutton_organization_2_15','Enable','off',...
    'String','�Ƿ����˰���','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_16=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.791 0.177 0.199 0.142],'Tag','pushbutton_organization_2_16','Enable','off',...
    'String','�Ƿ�赽��ǧԪ','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_17=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.607 0.026 0.173 0.142],'Tag','pushbutton_organization_2_17','Enable','off',...
    'String','�μӼ���','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_7=axes(uipanel_organization_2_3,'Units','normalized','OuterPosition',[0.58 0.509 0.487 0.547],...
    'Position',[0.701 0.616 0.279 0.366],'Tag','axes_organization_2_7','Visible','off');
handles.axes_organization_2_7=axes_organization_2_7;
%��Ϊ�����ϵ
uipanel_organization_2_4=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.487 0.12 0.502 0.424],'Tag','uipanel_organization_2_4',...
    'Title','����Ϊ���ʽ�Ĺ�ϵ','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_4=uipanel_organization_2_4;
text_organization_2_4=uicontrol(uipanel_organization_2_4,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.056 0.681 0.391 0.071],'Tag','text_organization_2_4',...
    'String','����������������Լ���','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
handles.text_organization_2_4=text_organization_2_4;
axes_organization_2_4=axes(uipanel_organization_2_4,'Units','normalized','OuterPosition',[0.35 0.558 0.288 0.382],...
    'Position',[0.471 0.674 0.078 0.188],'Tag','axes_organization_2_4','Visible','off');
handles.axes_organization_2_4=axes_organization_2_4;
uitable_organization_2_4=uitable(uipanel_organization_2_4,'Units','normalized',...
    'Position',[0.021 0.038 0.577 0.593],'Tag','uitable_organization_2_4');
handles.uitable_organization_2_4=uitable_organization_2_4;
pushbutton_organization_2_18=uicontrol(uipanel_organization_2_4,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.629 0.291 0.138 0.128],'Tag','pushbutton_organization_2_18','Enable','off',...
    'String','�������','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_19=uicontrol(uipanel_organization_2_4,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.798 0.291 0.138 0.128],'Tag','pushbutton_organization_2_19','Enable','off',...
    'String','�������','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_20=uicontrol(uipanel_organization_2_4,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.629 0.07 0.138 0.128],'Tag','pushbutton_organization_2_20','Enable','off',...
    'String','��������','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_21=uicontrol(uipanel_organization_2_4,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.798 0.07 0.174 0.128],'Tag','pushbutton_organization_2_21','Enable','off',...
    'String','�Ƿ����͹���','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_8=axes(uipanel_organization_2_4,'Units','normalized','OuterPosition',[0.58 0.485 0.489 0.531],...
    'Position',[0.701 0.59 0.28 0.356],'Tag','axes_organization_2_8','Visible','off');
handles.axes_organization_2_8=axes_organization_2_8;

pushbutton_organization_2_22=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.79 0.016 0.072 0.069],'Tag','pushbutton_organization_2_22',...
    'String','<< ��һ��','Visible','on','Interruptible','off','BusyAction','cancel',...
    'FontWeight','bold');
pushbutton_organization_2_23=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.887 0.016 0.072 0.069],'Tag','pushbutton_organization_2_23',...
    'String','�ص���ҳ','Visible','on','Interruptible','off','BusyAction','cancel',...
    'FontWeight','bold');
pushbutton_organization_2_24=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.688 0.016 0.072 0.069],'Tag','pushbutton_organization_2_24',...
    'String','������ʾ','Visible','on','Interruptible','off','BusyAction','cancel',...
    'Callback',@help_organization_2);
pushbutton_organization_2_25=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.315 0.025 0.062 0.049],'Tag','pushbutton_organization_2_25',...
    'String','����','Visible','on','Interruptible','off','BusyAction','cancel');
edit__organization_2_1=uicontrol(uipanel_organization_2,'Style','edit','FontSize',10.0,...
    'Units','normalized','Position',[0.015 0.027 0.285 0.046],'Tag','edit__organization_2_1',...
    'ForegroundColor',[.153 .227 .373 1],'TooltipString','�����������鿴���˷���',...
    'String','');
text_organization_2_5=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.395 0.021 0.089 0.041],'Tag','text_organization_2_5',...
    'String','û���ҵ�Ŀ�꣡','ForegroundColor',[1 0 0 1],'Visible','off');
handles.text_organization_2_5=text_organization_2_5;
text_organization_2_6=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.496 0.021 0.131 0.041],'Tag','text_organization_2_6',...
    'String','������. . . . . .','ForegroundColor',[0.929 0.694 0.125 1],'Visible','off',...
    'FontWeight','bold');
handles.text_organization_2_6=text_organization_2_6;
text_organization_2_7=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.496 0.021 0.131 0.041],'Tag','text_organization_2_7',...
    'String','������ɣ�','ForegroundColor',[.153 .227 .373 1],'Visible','off',...
    'FontWeight','bold');
text_organization_2_8=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.017 0.081 0.19 0.035],'Tag','text_organization_2_8',...
    'String','�����������鿴���˷���','ForegroundColor',[1 0.4 0.4 1],'Visible','on',...
    'FontWeight','bold');
handles.text_organization_2_7=text_organization_2_7;
handles.edit__organization_2_1=edit__organization_2_1;
handles.organization_figure_2=organization_figure_2;

%% ���������
organization_figure_3=figure('Name','�������','Units','normalized',...
    'position',[(1-0.146)/2 (1-0.296)/2 0.146 0.296],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame7 = get(organization_figure_3,'JavaFrame');
figFrame7.setFigureIcon(newIcon);
text_organization_3_1=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.085 0.837 0.585 0.11],'Tag','text_organization_3_1',...
    'String','����������£�','ForegroundColor','[.153 .227 .373 1]','Visible','on');
handles.text_organization_3_1=text_organization_3_1;
text_organization_3_2=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.085 0.837 0.76 0.11],'Tag','text_organization_3_2',...
    'String','�ǽ���̬��Ⱥ���£�','ForegroundColor','[.153 .227 .373 1]','Visible','on');
handles.text_organization_3_2=text_organization_3_2;
listbox_organization_3_1=uicontrol(organization_figure_3,'Style','listbox','FontSize',10.5,...
    'Units','normalized','Position',[0.12 0.256 0.755 0.559],'Tag','listbox_organization_3_1',...
    'String','','ForegroundColor','[.153 .227 .373 1]','Value',1.0,'TooltipString','ѡ��һ����ȷ�ϣ���ֹһ�Ϊ�����ߣ�');
handles.listbox_organization_3_1=listbox_organization_3_1;
pushbutton_organization_3_1=uicontrol(organization_figure_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.115 0.053 0.33 0.132],'Tag','pushbutton_organization_3_1',...
    'String','ȡ��','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_3_2=uicontrol(organization_figure_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.54 0.053 0.33 0.132],'Tag','pushbutton_organization_3_2',...
    'String','ȷ��','Visible','on','Interruptible','off','BusyAction','cancel');
handles.organization_figure_3=organization_figure_3;

%% ��������ص�����
set(pushbutton_individual_2_1,'Callback',{@pushbutton_individual_2_1_Callback});        %�Ӹ���Part1�ص���¼����
set(pushbutton_individual_3_2,'ButtonPushedFcn',{@pushbutton_individual_3_2_ButtonPushedFcn});        %�Ӹ���Part2�ص���¼����
set(pushbutton_individual_1_1,'Callback',{@pushbutton_individual_1_1_Callback,pushbutton_individual_1_1});    %���ˡ����ҵ���Ϣ����ȡ·����
set(pushbutton_individual_1_2,'Callback',{@pushbutton_individual_1_2_Callback,false,'1'})     %���ˡ����ϴ�����
set(pushbutton_individual_1_4,'Callback',{@pushbutton_individual_1_4_Callback});    %���������桰��һ����
set(pushbutton_individual_1_5,'Callback',{@pushbutton_individual_1_5_Callback});    %���������桰��һ����
set(pushbutton_individual_2_2,'Callback',{@pushbutton_individual_2_2_Callback});    %�������鱨�桪��Part1����һ����
set(pushbutton_individual_2_3,'Callback',{@pushbutton_individual_2_3_Callback});    %�������鱨�桪��Part1����һ����
set(pushbutton_individual_3_1,'ButtonPushedFcn',{@pushbutton_individual_3_1_Callback});    %�������鱨�桪��Part2����һ����
set(pushbutton_organization_1_1,'Callback',{@pushbutton_individual_1_1_Callback,pushbutton_organization_1_1});    %�Ŷӡ����ҵ���Ϣ����ȡ·����
set(pushbutton_organization_1_2,'Callback',{@pushbutton_organization_1_2_Callback})     %�Ŷӡ����ϴ�����
set(pushbutton_organization_1_4,'Callback',{@pushbutton_organization_1_4_Callback});    %�Ŷ������桰��һ����
set(pushbutton_organization_1_5,'Callback',{@pushbutton_organization_1_5_Callback});    %�Ŷ������桰��һ����
set(pushbutton_organization_1_6,'Callback',{@pushbutton_organization_1_6_Callback,...
    listbox_organization_1_1,listbox_organization_1_2});    %�Ŷ������桰���ơ�
set(pushbutton_organization_1_7,'Callback',{@pushbutton_organization_1_6_Callback,...
    listbox_organization_1_2,listbox_organization_1_1});    %�Ŷ������桰���ơ�
set(pushbutton_organization_2_22,'Callback',{@pushbutton_organization_2_22_Callback});    %�Ŷӡ��������ط�������һ����
set(pushbutton_organization_2_23,'Callback',{@pushbutton_organization_2_23_Callback});    %���Ŷӵ����ط����ص���¼����
set(pushbutton_organization_2_1,'Callback',{@pushbutton_organization_2_1_Callback});    %�Ŷӡ��������ط�������������ģ�飩
set(pushbutton_organization_2_2,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_3,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_4,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_5,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_6,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_7,'Callback',{@pushbutton_organization_2_7_Callback});    %�Ŷӡ��������ط�������ͥ����ģ�飩
set(pushbutton_organization_2_8,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_9,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_10,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_11,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_12,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_13,'Callback',{@pushbutton_organization_2_13_Callback});    %�Ŷӡ��������ط������������ģ�飩
set(pushbutton_organization_2_14,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_15,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_16,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_17,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_18,'Callback',{@pushbutton_organization_2_18_Callback});    %�Ŷӡ��������ط������������ģ�飩
set(pushbutton_organization_2_19,'Callback',{@pushbutton_organization_2_18_Callback});
set(pushbutton_organization_2_20,'Callback',{@pushbutton_organization_2_18_Callback});
set(pushbutton_organization_2_21,'Callback',{@pushbutton_organization_2_18_Callback});
set(pushbutton_organization_2_25,'Callback',{@pushbutton_organization_2_25_Callback});     %��������
set(pushbutton_organization_3_1,'Callback',{@pushbutton_organization_3_1_Callback});     %������ȡ����
set(pushbutton_organization_3_2,'Callback',{@pushbutton_organization_3_2_Callback});     %������ȷ�ϡ�
splash(h,'off');        %�ر���������

%% ��½����
%% �½�ͼ�β������������
Hd_login = figure('NumberTitle', 'off', 'Resize','off','Color',[1 0.843 0.769],...
    'Name', '������״������ϵͳ����LOGIN','tag','Hd_login','Units','normalized',...
    'Position',[(1-0.439)/2 (1-0.525)/2 0.439 0.525],'menubar','none','Visible','on');
%ȡ��Figure��JavaFrame
%�޸�ͼ��
figFrame = get(Hd_login,'JavaFrame');
figFrame.setFigureIcon(newIcon);
%% �˵��������˵��
m1=uimenu(Hd_login,'Label','<html><img src="file:./images/about_software2.png"/><span style="font-size:11px;color:green">�������</span></html>',...
    'Interruptible','off','BusyAction','cancel','tag','UsageNotice');    %�����ȼ�
%% ��Ӱ�ť
pushbutton_login_1=uicontrol(Hd_login,'Style','pushbutton','ForegroundColor',[0.58 0.388 0.388 1],...
    'FontSize',12,'Units','normalized','Position',[0.498 0.079 0.168 0.099],...
    'Tag','pushbutton_login_1','String','����','Visible','on','Interruptible','off',...
    'BusyAction','cancel');
pushbutton_login_2=uicontrol(Hd_login,'Style','pushbutton','ForegroundColor',[0.58 0.388 0.388 1],...
    'FontSize',12,'Units','normalized','Position',[0.803 0.082 0.168 0.099],...
    'Tag','pushbutton_login_2','String','Ⱥ��','Visible','on','Interruptible','off',...
    'BusyAction','cancel');         %��Enable='inactive',ֻ��Buttonfcn��Ч��callback��Ч
set(pushbutton_login_1,'Callback',{@pushbutton_login_1_Callback});      %��½����(����)
set(pushbutton_login_2,'Callback',{@pushbutton_login_2_Callback});      %��½����(�Ŷ�)
set(m1,'Callback',{@aboutsoftware});        %���˵��
%% ��ӱ���ͼƬ
Hd_axes = axes('units','normalized','position',[0 0 1 1],'tag','Hd_axes');
uistack(Hd_axes,'down')
II=imread('.\images\background.png');
image(II)
%colormap gray
set(Hd_axes,'handlevisibility','off','visible','off');
handles.Hd_login=Hd_login;
end

%������

%% function
%% �������
function aboutsoftware(hObject,~)
habout_software=figure('Name','�������','Units','normalized','position',[(1-0.425)/2 (1-0.613)/2 0.425 0.613],...
    'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows����icon
figFrame_software = get(habout_software,'JavaFrame');
figFrame_software.setFigureIcon(newIcon);
axes_aboutsoftware=axes(habout_software,'Units','normalized','OuterPosition',[-0.117 0.383 1.194 0.666],...
    'Position',[0.009 0.488 0.978 0.488],'Tag','axes_aboutsoftware','Visible','on');
imshow(imread('.\images\background3.png'));
text_aboutsoftware_1=uicontrol(habout_software,'Style','text','FontSize',11.0,'Units','normalized',...
    'Position',[0.017 0.416 0.46 0.053],'Tag','text_aboutsoftware_1','String','�������ƣ�����������ϵͳ V1.0',...
    'HorizontalAlignment','left');
text_aboutsoftware_2=uicontrol(habout_software,'Style','text','FontSize',10.0,'Units','normalized',...
    'Position',[0.017 0.35 0.692 0.053],'Tag','text_aboutsoftware_2','String','English Name��Mental Health Assessment System V1.0',...
    'HorizontalAlignment','left');
uipanel_aboutsoftware=uipanel(habout_software,'HighlightColor',[.302 .745 .933 1],'Units','normalized',...
    'Position',[0.009 0.070 0.967 0.26],'Tag','uipanel_aboutsoftware');
text_aboutsoftware_3=uicontrol(uipanel_aboutsoftware,'Style','text','FontSize',10.0,'Units','normalized',...
    'Position',[0.013 0.05 0.975 0.958],'Tag','text_aboutsoftware_3',...
    'String','      ������������ϵͳ�������칤�̴�ѧ������ʦ��ָ���£��ɱ�������ӱ������ɡ�������ϵͳ�õ���������������Ϊ��֢״��������SCL90�����ǵ�ǰʹ����Ϊ�㷺�ľ����ϰ����������������������ö���Ϊ���ˣ�16�����ϣ����ò�������ɴӸо�����С�˼ά�� ��ʶ����Ϊֱ������ϰ�ߡ��˼ʹ�ϵ����ʳ˯�ߵȶ��ֽǶȣ�����һ�����Ƿ���ĳ������֢״�������س̶���Ρ�����������֢״�����п��ܴ��������ϰ��������ϰ���Ե�����������õ����������������鲻���������Ҳ�飬Ҳ���Խ���Ⱥ����������ָ��ˡ���ͥ����ᡢ��Ϊ���ʽ�ĸ������������Ƿ񽡿�����ϵ��',...
    'HorizontalAlignment','left');
text_aboutsoftware_4=uicontrol(habout_software,'Style','text','FontSize',10.0,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.012 0.002 0.322 0.047],'Tag','text_aboutsoftware_4',...
    'String','��Ȩ���У�C�����칤�̴�ѧ','HorizontalAlignment','left');
end

%% ���ˡ����ϴ����ݣ�������ʾ��
function help_individual_1(hObject,~)
helpindividual1=figure('Name','�����ϴ����ݡ���������ʾ','Units','normalized',...
    'position',[(1-0.237)/2 (1-0.189)/2 0.237 0.189],'Resize','off','MenuBar','none',...
    'ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows����icon
figFrame_individual1 = get(helpindividual1,'JavaFrame');
figFrame_individual1.setFigureIcon(newIcon);
text_helpindividual1_1=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.801 0.616 0.128],...
    'Tag','text_helpindividual1_1','HorizontalAlignment','left','String','1������һ�������������档');
text_helpindividual1_2=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.619 0.662 0.138],...
    'Tag','text_helpindividual1_2','HorizontalAlignment','left','String','2������һ�����������������');
text_helpindividual1_3=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.361 0.925 0.224],...
    'Tag','text_helpindividual1_3','HorizontalAlignment','left','String','3�����ϴ����ݡ���"��һ��"֮ǰ�������ϴ����������');
text_helpindividual1_4=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.06 0.961 0.246],...
    'Tag','text_helpindividual1_4','HorizontalAlignment','left','String','4��ϵͳ��������ʱ��Ĭ��ѡ��Excel���sheet1�е�һ���˵����ݡ�');
end

%% �Ŷӡ����ϴ����ݣ�������ʾ��
function help_organization_1(hObject,~)
helporganization1=figure('Name','Ⱥ���ϴ����ݡ���������ʾ','Units','normalized',...
    'position',[(1-0.283)/2 (1-0.301)/2 0.283 0.301],'Resize','off','MenuBar','none',...
    'ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows����icon
figFrame_organization1 = get(helporganization1,'JavaFrame');
figFrame_organization1.setFigureIcon(newIcon);
text_helporganization1_1=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.818 0.594 0.117],...
    'Tag','text_helporganization1_1','HorizontalAlignment','left','String','1������һ�������������档');
text_helporganization1_2=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.649 0.638 0.13],...
    'Tag','text_helporganization1_2','HorizontalAlignment','left','String','2������һ�������������Լ��顣');
text_helporganization1_3=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.429 0.891 0.182],...
    'Tag','text_helporganization1_3','HorizontalAlignment','left','String','3�����ϴ����ݡ���"��һ��"֮ǰ�������ϴ�����������ѡ�񼴽����������Լ�������ء�');
text_helporganization1_4=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.273 0.928 0.117],...
    'Tag','text_helporganization1_4','HorizontalAlignment','left','String','4��ϵͳ��������ʱ��Ĭ��ѡ��Excel���sheet1��');
text_helporganization1_5=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.065 0.928 0.169],...
    'Tag','text_helporganization1_4','HorizontalAlignment','left','String','5����ȷ���ϴ���Excel���д���10����10�������ϵ�������Ϣ�����������Է���û�����塣');
end

%% �Ŷӡ��������ط�����������ʾ��
function help_organization_2(hObject,~)
helporganization2=figure('Name','�����ط�������������ʾ','Units','normalized',...
    'position',[(1-0.408)/2 (1-0.461)/2 0.408 0.461],'Resize','off','MenuBar','none',...
    'ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows����icon
figFrame_organization2 = get(helporganization2,'JavaFrame');
figFrame_organization2.setFigureIcon(newIcon);
text_helporganization2_1=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.763 0.969 0.206],...
    'Tag','text_helporganization2_1','HorizontalAlignment','left',...
    'String','�����Լ���������ȶ����壨����������Ĳ���������ֲ���ʽ����һ�����裬Ȼ������������Ϣ���ж�������裨������裩�Ƿ�������ж��������ʵ�����ԭ�����Ƿ��������Բ��졣��������ϵͳ�õ��ļ��鷽���У�Pearson����/����У��/Fisher��ȷ���飻������ˮƽ��Ϊ0.05��');
text_helporganization2_2=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.548 0.969 0.195],...
    'Tag','text_helporganization2_2','HorizontalAlignment','left',...
    'String','���磺�����㣬�����ǽ���̬����Ϊ0.85��Ů���ǽ���̬����Ϊ0.25����ʱ��P<0.05����֤����ͬ�Ա���˷ǽ���̬�����ʴ��������Բ��죬�����������ǽ���̬�ķ������ʱ�Ů���ߣ��˽�����95%�Ŀ��Ŷȣ��෴��P>=0.05������֤���Ա������������Ƿ񽡿�����ϵ��');
text_helporganization2_3=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[1 0 0 1],'Units','normalized','Position',[0.004 0.472 0.183 0.059],...
    'Tag','text_helporganization2_3','HorizontalAlignment','left',...
    'String','���ر���ʾ����');
text_helporganization2_4=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.379 0.7 0.073],...
    'Tag','text_helporganization2_4','HorizontalAlignment','left',...
    'String','1��������������������һ��������ʾ������������');
text_helporganization2_5=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.263 0.969 0.11],...
    'Tag','text_helporganization2_5','HorizontalAlignment','left',...
    'String','2������еġ�NaN������ʾ������ݲ����ڡ��������Fisher��ȷ����ʱ�������õ�����ֵX2�����Ա���ֻ��һ��ʱ�������������Լ��顣');
text_helporganization2_6=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.11 0.205 0.065],...
    'Tag','text_helporganization2_6','HorizontalAlignment','left',...
    'String','3������Ϸ�����');
axes_helporganization2_1=axes(helporganization2,'Units','normalized','OuterPosition',[0.09 -0.016 0.307 0.363],...
    'Position',[0.221 0.124 0.081 0.127],'Tag','axes_helporganization2_1','Visible','off');
[A,map,transparency]=imread('.\images\ok2.png');
himage=imshow(A);
set(himage,'AlphaData',transparency);
text_helporganization2_7=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.311 0.113 0.474 0.068],...
    'Tag','text_helporganization2_7','HorizontalAlignment','left',...
    'String','˵����������������Ƿ񽡿�������ϵ��');
text_helporganization2_8=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[1 0 1 1],'Units','normalized','Position',[0.011 0.008 0.7 0.073],...
    'Tag','text_helporganization2_8','HorizontalAlignment','left','FontWeight','bold',...
    'String','4������������Ϊ��ʱ��Ĭ���������зǽ���̬����Ⱥ��');
end

%% �Ӹ���Part1�ص���¼����
function pushbutton_individual_2_1_Callback(hObject,~)
global handles;
set(handles.individual_figure_2,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% �Ӹ���Part2�ص���¼����
function pushbutton_individual_3_2_ButtonPushedFcn(hObject,~)
global handles;
set(handles.individual_figure_3,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% ���Ŷӵ����ط����ص���¼����
function pushbutton_organization_2_23_Callback(hObject,~)
global handles;
set(handles.organization_figure_2,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% ��½ѡ����һ������������
function pushbutton_login_1_Callback(hObject,~)         %hObject���������¼������������Ϣ
global handles;
set(handles.Hd_login,'Visible','off');
    %�޸�individual_figure_1������
    set(handles.text_individual_1_1,'Visible','off');     %�ϴ�ʧ�ܱ�ǩ
    set(handles.text_individual_1_2,'Visible','off');
    set(handles.edit_individual_1_1,'String','Excel�ļ���·����������水ťѡ�񣬲�֧��ֱ�����룩');
    %�޸����
set(handles.individual_figure_1,'Visible','on');
end

%% ��½ѡ����һ���������Ŷ�
function pushbutton_login_2_Callback(hObject,~)
global handles;
set(handles.Hd_login,'Visible','off');
    %�޸�organization_figure_1������
    set(handles.text_organization_1_1,'Visible','off');     %�ϴ�ʧ�ܱ�ǩ
    set(handles.text_organization_1_2,'Visible','off');
    set(handles.edit_organization_1_1,'String','Excel�ļ���·����������水ťѡ�񣬲�֧��ֱ�����룩');
    set(handles.listbox_organization_1_2,'String','');
    set(handles.listbox_organization_1_1,'String',{'1-�Ա�','2-����','3-����״��','4-ְҵ','5-�Ը�����','6-�Ļ��̶�','7-��ͥ���','8-��ͥ�˿���','9-��ͥ����','10-��ͥ����','11-ƶ����','12-��ͥ����','13-֪������','14-�������ζ','15-�Ƿ����˰���','16-�Ƿ�赽2000Ԫ','17-�μӼ���','18-�������','19-�������','20-��������','21-���͹���'});
    %�޸����
set(handles.organization_figure_1,'Visible','on');
end

%% �ҵ���Ϣ����ȡ·������������&�Ŷ�
function pushbutton_individual_1_1_Callback(hObject,evendata,button)
global handles;
[FileName1,PathName1] = uigetfile({'*.xlsx;*.xls','Excel Files(*.xlsx,*.xls)'}...
    ,'����������Ϣ��');
file=strcat(PathName1,FileName1);
tag=get(button,'tag');
if strcmp(tag,'pushbutton_individual_1_1')
    handles.file1=file;         %����
    set(handles.edit_individual_1_1,'String',file);
else
    handles.file2=file;         %�Ŷ�
    set(handles.edit_organization_1_1,'String',file);
end
end

%% �ϴ����ݡ�������
function pushbutton_individual_1_2_Callback(hObject,~,isSearch,row_index)
global handles;
global basic_information;
if ~isvalid(handles.individual_figure_2)
    newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows����icon
    individual_figure_2=figure('Name','������챨�桪��Part1','Units','normalized',...
        'position',[(1-0.928)/2 (1-0.635)/2 0.928 0.635],'Resize','off','MenuBar','none','ToolBar','none'...
        ,'NumberTitle','off','WindowStyle','normal','Visible','off');
    figFrame3 = get(individual_figure_2,'JavaFrame');
    figFrame3.setFigureIcon(newIcon);
    uipanel_individual_2=uipanel(individual_figure_2,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.003 0.006 0.992 0.982],'Tag','uipanel_individual_2',...
        'Title','90��֢״��������SCL-90�������������Part1','Visible','on','FontWeight','bold');
    uipanel_individual_2_1=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.006 0.011 0.204 0.951],'Tag','uipanel_individual_2_1',...
        'Title','�������','Visible','on','FontWeight','bold');
    uipanel_individual_2_2=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.215 0.009 0.781 0.953],'Tag','uipanel_individual_2_2',...
        'Title','���Խ��','Visible','on','FontWeight','bold');
    text_individual_2_1=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.076 0.905 0.238 0.046],'Tag','text_individual_2_1',...
        'String','������','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    text_individual_2_2=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.249 0.899 0.71 0.052],'Tag','text_individual_2_2',...
        'String','����','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    handles.text_individual_2_2=text_individual_2_2;
    text_individual_2_3=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.075 0.851 0.237 0.046],'Tag','text_individual_2_3',...
        'String','�Ա�','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    text_individual_2_4=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.257 0.855 0.191 0.042],'Tag','text_individual_2_4',...
        'String','�Ա�','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    handles.text_individual_2_4=text_individual_2_4;
    text_individual_2_5=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.498 0.856 0.195 0.041],'Tag','text_individual_2_5',...
        'String','���䣺','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    text_individual_2_6=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.705 0.858 0.183 0.039],'Tag','text_individual_2_6',...
        'String','����','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    handles.text_individual_2_6=text_individual_2_6;
    uipanel_individual_2_1_1=uipanel(uipanel_individual_2_1,'FontSize',10,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.028 0.019 0.952 0.812],'Tag','uipanel_individual_2_1_1',...
        'Title','��ܰ��ʾ','Visible','on','FontAngle','italic');
    s=['��ȫ����ģ���������������һ��׼���ɿ���ɸ�����ԣ����һ����飺' char(10) '1���ֳܷ���160�֣�' char(10) '2��������Ŀ������43�' char(10) '3����һ���ӷֳ���2�֡�' char(10) '����250����Ƚ����أ���Ҫ��ҽѧ�ϵ���ϸ��飬�ܿ���Ҫ������Ե��������ƻ���ҽ����ָ���·�ҩ��' char(10) '*������ϵͳ���������۵ȼ���Ϊ�Ĵ��ࣺ����̬���ǽ���һ̬�ȡ��ǽ�����̬������̬�����������ηֳ�3����16����13����19��������51��������Խ�ߣ��뽡��̬ԽԶ��'];
    text_individual_2_7=uicontrol(uipanel_individual_2_1_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.025 0.042 0.953 0.935],'Tag','text_individual_2_7',...
        'String',s,'HorizontalAlignment','left','Visible','on','ForegroundColor',[.153 .227 .373 1]);
    axes_individual_2_1=axes(uipanel_individual_2_2,'Units','normalized','OuterPosition',[-0.053 0.13 0.865 0.851],...
        'Position',[0.047 0.255 0.692 0.64],'Tag','axes_individual_2_1','Visible','on',...
        'Box','on');
    handles.axes_individual_2_1=axes_individual_2_1;
    pushbutton_individual_2_1=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.395 0.058 0.137 0.084],'Tag','pushbutton_individual_2_1',...
        'String','�ص���ҳ','Visible','on','Interruptible','off','BusyAction','cancel');
    handles.pushbutton_individual_2_1=pushbutton_individual_2_1;
    pushbutton_individual_2_2=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.584 0.058 0.137 0.084],'Tag','pushbutton_individual_2_2','FontWeight','bold',...
        'String','<< ��һ��','Visible','on','Interruptible','off','BusyAction','cancel');
    handles.pushbutton_individual_2_2=pushbutton_individual_2_2;
    pushbutton_individual_2_3=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.776 0.058 0.137 0.084],'Tag','pushbutton_individual_2_3','FontWeight','bold',...
        'String','��һ�� >>','Visible','on','Interruptible','off','BusyAction','cancel',...
        'Callback',@pushbutton_individual_2_3_Callback);
    uitable_individual_2_1=uitable(uipanel_individual_2_2,'Units','normalized',...
        'Position',[0.761 0.346 0.217 0.540],'ColumnWidth',{42 'auto'});
    handles.uitable_individual_2_1=uitable_individual_2_1;
    handles.individual_figure_2=individual_figure_2;
end
if ~isvalid(handles.individual_figure_3)
    screenposition=get(0,'screensize');
    x=(screenposition(3)-658)/2;
    y=(screenposition(4)-467)/2;
    individual_figure_3=uifigure('Name','������챨�桪��Part2','Position',[x y 656 442],...
        'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','Visible','off');
    uipanel_individual_3=uipanel(individual_figure_3,'FontSize',15.33,'ForegroundColor',[.153 .227 .373 1],...
        'Position',[8 7 643 428],'Tag','uipanel_individual_3','Title','90��֢״��������SCL-90�������������Part2',...
        'Visible','on','FontWeight','bold');
    label_individual_3_1=uilabel(uipanel_individual_3,'Position',[9 285 260 51],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373]);
    handles.label_individual_3_1=label_individual_3_1;
    label_individual_3_2=uilabel(uipanel_individual_3,'Position',[354 312 52 23],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373],'Text','�ܷ֣�');
    textarea__individual_3_1=uitextarea(uipanel_individual_3,'HorizontalAlignment','left',...
        'Position',[10 9 523 266],'FontColor',[.153 .227 .373]','FontSize',13.33,'Editable','off');
    handles.textarea__individual_3_1=textarea__individual_3_1;
    pushbutton_individual_3_1=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 11 90 35],'FontWeight','bold','Text','<< ��һ��',...
        'ButtonPushedFcn',@pushbutton_individual_3_1_Callback);
    pushbutton_individual_3_2=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 72 90 35],'Text','�ص���ҳ','FontWeight','bold');
    handles.pushbutton_individual_3_2=pushbutton_individual_3_2;
    pushbutton_individual_3_3=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[263 285 60 60],'Text','');          %����ͼ��
    handles.pushbutton_individual_3_3=pushbutton_individual_3_3;
    gauge_individual_3_1=uigauge(uipanel_individual_3,'Limits',[0 450],...       %�Ǳ���
        'MajorTicks',[90:60:450],'MajorTickLabels',{'90','150','210','270','330','390','450'},...
        'MinorTicks',[90:12:450],'Value',0,'ScaleDirection','clockwise','FontSize',11,...
        'FontColor',[.153 .227 .373],'Position',[412 279 120 120],'ScaleColors',[1 0.84 0;1 0.27 0;0.86 0.08 0.24],...
        'ScaleColorLimits',[180 270;270 360;360 450]);
    handles.gauge_individual_3_1=gauge_individual_3_1;
    handles.individual_figure_3=individual_figure_3;
end

file1=handles.file1;
count1=90+7;    %�������ܳ���
step=0;
persistent h1;
if ~isSearch
    set(handles.text_individual_1_1,'Visible','off');
    set(handles.text_individual_1_2,'Visible','off');
    if strcmp(file1,'Excel�ļ���·����������水ťѡ�񣬲�֧��ֱ�����룩')||isempty(file1)      %δ�ϴ����������Ϣ��
        hwarn=warndlg('�����ϴ�����������Ϣ��','���棡','modal');
        newIcon = javax.swing.ImageIcon('.\images\clover.png');
        dlgFrame = get(hwarn,'JavaFrame');
        dlgFrame.setFigureIcon(newIcon);
        return;
    end
    h1=waitbar(0,'����������Ϣ���ϴ���......','WindowStyle','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %����Window����icon
    dlgFrame = get(h1,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    waitbar(step/count1,h1)
end

try
    Ui=zeros(1,10);     %10���и�������ܷ�
    temp=zeros(1,2);
    positive_value={temp,temp,temp,temp,temp,temp,temp,temp,temp,temp};      %10��Ŀ������Ŀ�����������������ܷ�
    A=zeros(1,10);      %A,B,C,D��Ԫ��ϵ��������������Ŀ����Ŀ��
    B=zeros(1,10);
    C=zeros(1,10);
    D=zeros(1,10);
    title={[1 4 12 27 40 42 48 49 52 53 56 58]         %10*1 cell
        [3 9 10 28 38 45 46 51 55 65]
        [6 21 34 36 37 41 61 69 73]
        [5 14 15 20 22 26 29 30 31 32 54 71 79]
        [2 17 23 33 39 57 72 78 80 86]
        [11 24 63 67 74 81]
        [13 25 47 50 70 75 82]
        [8 18 43 68 76 83]
        [7 16 35 62 77 84 85 87 88 90]
        [19 44 59 60 64 66 89]};           %����Ŀ��Ӧ����Ŀ���
    secondary_weights=zeros(1,10);      %����Ȩ��
    sum_factors=0;        %���ӷ��ܷ�
    level1_weights=[1/12 1/10 1/9 1/13 1/10 1/6 1/7 1/6 1/10 1/7];         %һ��Ȩ��
    %��Ҫ��õ���
    factor_average=zeros(1,10);         %���Ӿ���
    sum=0;      %�ܷ�
    average=0;      %�ܾ���
    positive_count=0;     %������Ŀ��
    positive_sum=0;         %�����ܷ�
    positive_average=0;     %����֢״����
    if ~isSearch
        step=step+1;           %����������
        waitbar(step/count1,h1)
    end
    %��ʼ����
    row_index=str2num(row_index);
    [num0,txt0,raw0]=xlsread(file1,1,sprintf('%c%d:%c%c%d',87,row_index+2,68,72,row_index+2));
    for i=1:10      %�ɿ���ǿ��ת��������������������������������
        for j=1:length(title{i,1})          %length�᷵�ؾ����еġ��������
            for k=1:5
                if eq(raw0{1,title{i,1}(1,j)},k)           %class(raw0{title{1,i}(1,j),k})���ɲ鿴��������
                    Ui(1,i)=Ui(1,i)+k;
                    if k>=2         %����
                        positive_value{1,i}(1,1)=positive_value{1,i}(1,1)+1;
                        positive_value{1,i}(1,2)=positive_value{1,i}(1,2)+k;
                    end
                    if k<=2
                        A(1,i)=A(1,i)+1;
                    elseif k==3
                        B(1,i)=B(1,i)+1;
                    elseif k==4
                        C(1,i)=C(1,i)+1;
                    else
                        D(1,i)=D(1,i)+1;
                    end
                    break;
                end
            end
            if ~isSearch
                step=step+1;           %����������
                waitbar(step/count1,h1)
            end
        end
        factor_average(1,i)=Ui(1,i)*level1_weights(1,i);        %������
        sum=sum+Ui(1,i);                %�ܷ�
        positive_sum=positive_sum+positive_value{1,i}(1,2);         %�����Է�
        positive_count=positive_count+positive_value{1,i}(1,1);         %������Ŀ��
    end
    %������λС��
    factor_average=round(factor_average*10^3);
    factor_average=factor_average/10^3;
    handles.Ui=Ui;
    handles.factor_average=factor_average;
    average=sum/90;         %��ƽ����
    %������λС��
    average=round(average*10^3);
    average=average/10^3;
    handles.sum=sum;
    handles.average=average;
    positive_average=positive_sum/positive_count;           %����ƽ����
    %������λС��
    positive_average=round(positive_average*10^3);
    positive_average=positive_average/10^3;
    handles.positive_count=positive_count;
    handles.positive_average=positive_average;
    for i=1:10              %����Ȩ��
        sum_factors=sum_factors+factor_average(1,i);
    end
    for i=1:10
        secondary_weights(1,i)=factor_average(1,i)/sum_factors;
    end
    if ~isSearch
        step=step+1;           %����������
        waitbar(step/count1,h1)
    end
    value_A=0;
    value_B=0;
    value_C=0;
    value_D=0;
    for i=1:10                  %��ϵ��A
        value_A=value_A+A(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    if ~isSearch
        step=step+1;           %����������
        waitbar(step/count1,h1)
    end
    for i=1:10                  %��ϵ��B
        value_B=value_B+B(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    if ~isSearch
        step=step+1;           %����������
        waitbar(step/count1,h1)
    end
    for i=1:10                  %��ϵ��C
        value_C=value_C+C(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    if ~isSearch
        step=step+1;           %����������
        waitbar(step/count1,h1)
    end
    for i=1:10                  %��ϵ��D
        value_D=value_D+D(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    step=step+1;           %����������
    handles.value_A=value_A;
    handles.value_B=value_B;
    handles.value_C=value_C;
    handles.value_D=value_D;
    if ~isSearch
        step=step+1;           %����������
        waitbar(step/count1,h1)
    end
    %¼ȡ�������
    [num1,~,raw1]=xlsread(file1,1,sprintf('%c%d:%c%d',65,row_index+2,65,row_index+2));  %����
    basic_information.name=raw1;
    [num2,txt2,raw2]=xlsread(file1,1,sprintf('%c%d:%c%d',66,row_index+2,71,row_index+2));  %�������أ��Ա����䡢����״����ְҵ���Ը����͡��Ļ��̶ȣ�
    basic_information.individual_factors=raw2;
    if ~isSearch
        step=step+1;           %����������
        waitbar(step/count1,h1)
    end
catch
    close(h1);      %�رս�����                                          %�Ŷ������������Ҳ����ʹ�ô˱������
    herr=errordlg('���������Ϣ�����ݸ�ʽ����','������Ϣ','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %����Window����icon
    dlgFrame = get(herr,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    set(handles.text_individual_1_1,'Visible','on');
    return;
end
if ~isSearch
    close(h1);      %�رս�����
    set(handles.text_individual_1_2,'Visible','on');
    set(handles.pushbutton_individual_3_2,'Enable','on');
    set(handles.pushbutton_individual_2_2,'Enable','on');
    set(handles.pushbutton_individual_2_1,'Enable','on');
else
    set(handles.text_individual_1_2,'Visible','on');
    set(handles.pushbutton_individual_3_2,'Enable','off');          %��ʱ�ý�������Ŷӹ�������������ã������Ρ���һ����ť��
    set(handles.pushbutton_individual_2_2,'Enable','off');              
    set(handles.pushbutton_individual_2_1,'Enable','off');
end
end

%% ���������桰��һ��������½���棩
function pushbutton_individual_1_4_Callback(hObject,~)
global handles;
set(handles.individual_figure_1,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% ���������桰��һ����(��챨�����)
function pushbutton_individual_1_5_Callback(hObject,~)
% javaaddpath('ColoredFieldCellRenderer2');       %ֻ�����ļ��л�.jar
% import ALG.*;
global handles;
global basic_information;
hasupload=get(handles.text_individual_1_2,'Visible');       %ͨ���鿴�ɹ��ϴ���ǩ�Ƿ�ɼ��ж��Ƿ��ϴ��ɹ�
if strcmp(hasupload,'off')
    hwarn=warndlg('���ȳɹ��ϴ�����������Ϣ��','���棡','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end
set(handles.individual_figure_1,'Visible','off');
%�޸�individual_figure_2������
set(handles.text_individual_2_2,'String',basic_information.name);    %����
set(handles.text_individual_2_4,'String',basic_information.individual_factors(1,1));    %�Ա�
set(handles.text_individual_2_6,'String',basic_information.individual_factors(1,2));    %����
%���ñ������
columnName={'�÷�','���֣����ӷ֣�'};
rowName={'������','ǿ��֢״','�˼�����','����','����','�ж�','�ֲ�','ƫִ','������','������Ŀ','�ܷ�'};      %1*11 cell
Ui=handles.Ui;
factor_average=handles.factor_average;
sum=handles.sum;
average=handles.average;
Ui=[Ui,sum];             %ת�úϲ�
Ui=Ui';
factor_average=[factor_average,average];
factor_average=factor_average';
uitable_value=[Ui factor_average];
uitable_value=num2cell(uitable_value);
rowId=size(uitable_value,1);
% axes(handles.axes_individual_2_1);
for i=1:rowId
    for j=1:2
        if i==rowId&&j==1&&uitable_value{i,j}>160
            uitable_value{i,j}=strcat(['<html><body text="#FF0000">'],num2str(uitable_value{i,j}));
        elseif j==2&&uitable_value{i,j}>2&&i~=rowId
            uitable_value{i,j}=strcat(['<html><body text="#FF0000">'],num2str(uitable_value{i,j}));
        else
            uitable_value{i,j}=strcat([],num2str(uitable_value{i,j}));
        end
    end
end
set(handles.uitable_individual_2_1,'RowName',rowName,'FontWeight','bold',...
    'FontSize',12.0,'ColumnName',columnName,'Data',uitable_value);
%�޸����
%��ͼ
axes(handles.axes_individual_2_1);      %��axes_individual_2_1����Ϊ��ǰ��������ʹ��������ʾ����ǰ�棬��Ϊ����ͼ�κ�����Ŀ��
plot(handles.factor_average,'-o','LineWidth',3);
hline=refline(0,2);       %�ο���
hline.Color='r';
hline.LineStyle='--';   %properties(hline)
hold on             %hold on/off���ܴ�ֺ�
legend('����','�ֽ���');
title('���ӷ���ͼ');
xlabel('10������');
ylabel('�����Ӿ���');
set(gca,'XTickLabel',{'������','ǿ��֢״','�˼�����','����','����','�ж�','�ֲ�','ƫִ','������','������Ŀ'},...
    'YLimMode','manual','YLim',[1 5]);
hold off
end

%% �������鱨����桪��Part1����һ��������
function pushbutton_individual_2_2_Callback(hObject,~)
global handles;
set(handles.individual_figure_2,'Visible','off');
set(handles.individual_figure_1,'Visible','on');
end

%% �������鱨����桪��Part1����һ�������������鱨����桪��Part2��
function pushbutton_individual_2_3_Callback(hObject,~)
global handles;
persistent textarea_value;
textarea_value={};
set(handles.individual_figure_2,'Visible','off');
if ~isvalid(handles.individual_figure_3)
    screenposition=get(0,'screensize');
    x=(screenposition(3)-658)/2;
    y=(screenposition(4)-467)/2;
    individual_figure_3=uifigure('Name','������챨�桪��Part2','Position',[x y 656 442],...
        'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','Visible','off');
    uipanel_individual_3=uipanel(individual_figure_3,'FontSize',15.33,'ForegroundColor',[.153 .227 .373 1],...
        'Position',[8 7 643 428],'Tag','uipanel_individual_3','Title','90��֢״��������SCL-90�������������Part2',...
        'Visible','on','FontWeight','bold');
    label_individual_3_1=uilabel(uipanel_individual_3,'Position',[9 285 260 51],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373]);
    handles.label_individual_3_1=label_individual_3_1;
    label_individual_3_2=uilabel(uipanel_individual_3,'Position',[354 312 52 23],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373],'Text','�ܷ֣�');
    textarea__individual_3_1=uitextarea(uipanel_individual_3,'HorizontalAlignment','left',...
        'Position',[10 9 523 266],'FontColor',[.153 .227 .373]','FontSize',13.33,'Editable','off');
    handles.textarea__individual_3_1=textarea__individual_3_1;
    pushbutton_individual_3_1=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 11 90 35],'FontWeight','bold','Text','<< ��һ��',...
        'ButtonPushedFcn',@pushbutton_individual_3_1_Callback);
    pushbutton_individual_3_2=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 72 90 35],'Text','�ص���ҳ','FontWeight','bold');
    handles.pushbutton_individual_3_2=pushbutton_individual_3_2;
    pushbutton_individual_3_3=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[263 285 60 60],'Text','');          %����ͼ��
    handles.pushbutton_individual_3_3=pushbutton_individual_3_3;
    gauge_individual_3_1=uigauge(uipanel_individual_3,'Limits',[0 450],...       %�Ǳ���
        'MajorTicks',[90:60:450],'MajorTickLabels',{'90','150','210','270','330','390','450'},...
        'MinorTicks',[90:12:450],'Value',0,'ScaleDirection','clockwise','FontSize',11,...
        'FontColor',[.153 .227 .373],'Position',[412 279 120 120],'ScaleColors',[1 0.84 0;1 0.27 0;0.86 0.08 0.24],...
        'ScaleColorLimits',[180 270;270 360;360 450]);
    handles.gauge_individual_3_1=gauge_individual_3_1;
    handles.individual_figure_3=individual_figure_3;
end

%�ж�����״̬
temp=0;     %���ڴ洢a,b,c,d��С��ϵ�ܺ�
if handles.value_A>handles.value_D                  %A&D
    temp=temp+76;
elseif handles.value_A==handles.value_D
    temp=temp+40;
else
    temp=temp+4;
end
if handles.value_A>handles.value_B                  %A&B
    temp=temp+25;
elseif handles.value_A==handles.value_B
    temp=temp+14;
else
    temp=temp+3;
end
if handles.value_B>handles.value_C                  %B&C
    temp=temp+8;
elseif handles.value_B==handles.value_C
    temp=temp+5;
else
    temp=temp+2;
end
if handles.value_C>handles.value_D                  %C&D
    temp=temp+3;
elseif handles.value_C==handles.value_D
    temp=temp+2;
else
    temp=temp+1;
end
if temp>=110&&temp<=112
    s='����̬';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\big_smile2.png');
    %      s1=strcat([],'����̬');
elseif temp>=84&&temp<=109
    s='�ǽ���һ̬';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\smile2.png');
    %     s=strcat([],'�ǽ���һ̬');
elseif temp>=48&&temp<=74
    s='�ǽ�����̬';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\ooooh2.png');
    %     s=strcat([],'�ǽ�����̬');
else
    s='����̬';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\sad2.png');
    %     s=strcat([],'����̬');
end

text=sprintf('������Ŀ����%d    ����֢״���֣�%.3f\n���ۺϷ�������Ŀǰ��������%s\n�������·��棬֢״�����ԣ�',...
    handles.positive_count,handles.positive_average,s);
% textarea_value=cell(10,1);
j=1;
if handles.Ui(1,1)>36
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'�����廯��','��Ҫ��ӳ���岻�ʸУ�������Ѫ�ܡ�θ����������������ϵͳ�Ĳ��ʣ���ͷʹ����ʹ��������ʹ���Լ����ǵ����岻�ʱ��֡��÷�����ĵ÷���12-60��֮�䡣�÷���36�����ϣ������������������н����ԵĲ��ʸУ���������ͷʹ��������ʹ��֢״���÷���24�����£�����֢״���ֲ����ԡ��ܵ�˵�����÷�Խ�ߣ�����Ĳ��ʸ�Խǿ���÷�Խ�ͣ�֢״����Խ�����ԡ�');
    j=j+1;
end
if handles.Ui(1,2)>30
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'��ǿ��֢״��','��Ҫָ��Щ��֪û�б�Ҫ�������޷����ѵ��������˼�롢�嶯����Ϊ������һЩ�Ƚ�һ�����֪�ϰ�����Ϊ����Ҳ����һ�����з�ӳ���÷�����ĵ÷���10-50��֮�䡣�÷���30�����ϣ�ǿ��֢״�����ԡ��÷���20�����£�ǿ��֢״�����ԡ��ܵ�˵�����÷�Խ�ߣ���������Խ�޷�����һЩ���������Ϊ��˼��ͳ嶯�������ܱ��ֳ�һЩ��֪�ϰ�����Ϊ���ס��÷�Խ�ͣ����������ڴ���֢״�ϱ���Խ�����ԣ�û�г���ǿ����Ϊ��');
    j=j+1;
end
if handles.Ui(1,3)>27
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'���˼ʹ�ϵ���У�','��Ҫ��ָĳЩ�˼ʵĲ��������Ա��У��ر�������������Ƚ�ʱ����ͻ�������˼ʽ����е��Ա��У����񲻰������ԵĲ����ڣ��Լ��˼ʽ����еĲ������Ұ�ʾ���������ڴ������ⷽ��֢״�ĵ���ԭ�򡣸÷�����ĵ÷���9-45��֮�䡣�÷���27�����ϣ����������˼ʹ�ϵ��Ϊ���У��˼ʽ������Ա��н�ǿ����������Ϊ֢״�������������������ȣ����÷���18�����£������������˼ʹ�ϵ�Ͻ�Ϊ�������ܵ�˵�����÷�Խ�ߣ��������˼ʽ����б��ֵ������Խ�࣬�Ա�����������Խͻ���������ѱ��ֳ��������ڴ����÷�Խ�ͣ��������˼ʹ�ϵ��Խ��Ӧ�����磬�˼ʽ������š����г��񣬲����л������ڴ���');
    j=j+1;
end
if handles.Ui(1,4)>39
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'��������','�������Ƶ�������ľ�Ϊ������֢״������������Ȥ�ļ��ˣ�����ȱ��������ɥʧ��Ϊ�����������ֳ�ʧ���������Լ�����������ϵ����֪�����巽��ĸ��ܣ����⣬�������й�������˼�����ɱ����÷�����ĵ÷���13-65��֮�䡣�÷���39�����ϣ���������������̶Ƚ�ǿ������ȱ���㹻����Ȥ��ȱ���˶���������������£����ܻ�����������˼�����ɱ�Ĺ���÷���26�����£��������������̶Ƚ���������̬���ֹۻ����������������ľ���졣�ܵ�˵�����÷�Խ�ߣ������̶�Խ���ԣ��÷�Խ�ͣ������̶�Խ�����ԡ�');
    j=j+1;
end
if handles.Ui(1,5)>30
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'�����ǣ�','һ��ָ��Щ���꣬�����������񾭹����������Լ��ɴ˲�������������������ȡ��÷�����ĵ÷���10-50��֮�䡣�÷���30�����ϣ�����������׽��ǣ��ױ��ֳ����ꡢ���������񾭹���������ʱ���ܵ��¾��ַ������÷���20�����£��������岻�׽��ǣ��ױ��ֳ�������״̬���ܵ�˵�����÷�Խ�ߣ����Ǳ���Խ���ԡ��÷�Խ�ͣ�Խ���ᵼ�½��ǡ�');
    j=j+1;
end
if handles.Ui(1,6)>18
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'���жԣ�','��Ҫ������������ӳ�жԵı��֣�˼�롢���鼰��Ϊ������Ŀ�����ᷳ�ĸо���ˤ�����ֱ�����ɿ��Ƶ�Ƣ�������ȸ����档�÷�����ĵ÷���6-30��֮�䡣�÷���18�����ϣ����������ױ��ֳ��жԵ�˼�롢��к���Ϊ���÷���12�����±����������ױ��ֳ��Ѻõ�˼�롢��к���Ϊ���ܵ�˵�����÷�Խ�ߣ�����Խ���׵жԣ������ۣ�Ƣ�����Կ��ơ��÷�Խ�ͣ������Ƣ��Խ�ºͣ������Ѻã���ϲ�����ۡ����ƻ���Ϊ��');
    j=j+1;
end
if handles.Ui(1,7)>21
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'���ֲ���','�־�Ķ�������������У��տ����أ���Ⱥ�򹫹������ͽ�ͨ���ߡ����⣬�����罻�ֲ����÷�����ĵ÷���7-35��֮�䡣�÷���21�����ϣ���������ֲ�֢״��Ϊ���ԣ������ֳ��罻���㳡����Ⱥ�־壬�÷���14�����£���������Ŀֲ�֢״�����ԡ��ܵ�˵�����÷�Խ�ߣ�����Խ���׶�һЩ���������巢���־壬���������Ե�����֢״���÷�Խ�ͣ�����Խ���ײ����ֲ�����Խ�������Ľ����ͻ��');
    j=j+1;
end
if handles.Ui(1,8)>18
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'��ƫִ��','��ҪָͶ����˼ά���жԣ����ɣ����룬��������Ϳ��ȡ��÷�����ĵ÷���6-30��֮�䡣�÷���18�����ϣ����������ƫִ֢״���ԣ����ײ��ɺ͵жԣ��÷���12�����£����������ƫִ֢״�����ԡ��ܵ�˵�����÷�Խ�ߣ�����Խ��ƫִ�����ֳ�Ͷ���Ե�˼ά�����룬�÷�Խ�ͣ�����˼άԽ�����߼��ˡ�');
    j=j+1;
end
if handles.Ui(1,9)>30
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'�������ԣ�','��ӳ��ʽ�����ļ���֢״����Ϊ�����޶����ϵľ����Թ��̵�֢״���֡��÷�����ĵ÷���10-50��֮�䡣�÷���30�����ϣ���������ľ�����֢״��Ϊ���ԣ��÷���20�����£���������ľ�����֢״�����ԡ��ܵ�˵�����÷�Խ�ߣ�Խ��ı��ֳ�������֢״����Ϊ���÷�Խ�ͣ���Խ�ٱ��ֳ���Щ֢״����Ϊ��');
    %     j=j+1;
end
 
%�жϽ���
set(handles.gauge_individual_3_1,'Value',handles.sum); 
if isempty(textarea_value)
    set(handles.textarea__individual_3_1,'Value','û��'); 
else
    set(handles.textarea__individual_3_1,'Value',textarea_value); 
end
set(handles.label_individual_3_1,'Text',text); 
set(handles.individual_figure_3,'Visible','on');
end

%% �������鱨�桪��Part2����һ����(�������鱨����桪��Part1)
function pushbutton_individual_3_1_Callback(hObject,~)
global handles;
set(handles.individual_figure_3,'Visible','off');
set(handles.individual_figure_2,'Visible','on');
end

%% �Ŷ������桪��������/���ơ�
function pushbutton_organization_1_6_Callback(hObject,evendata,list1,list2)
global handles;
output_list=get(list1,'String');        %����е��б�ֵ��cell��
output_index1=get(list1,'Value');       %����б�ѡ���е�����
output_index2=numel(output_list);       %����е�Ԫ�ظ���

if isempty(output_list)               %��Ϊ�գ������ƶ�
    return;
end

output_selected=output_list{output_index1};      %����б�ѡ���е�ֵ(char)
input_list=get(list2,'String');
input_index=numel(input_list);          %�õ�Ԫ������Ԫ�ظ���
input_list{input_index+1}=output_selected;
if output_index1==output_index2         %�ƶ��������һ��
    output_list{output_index1}=[];      %ɾ�����һ��ֵ
else
    for i=output_index1:output_index2-1             %�������ɾ���ƶ������ֵ
        output_list{i}=output_list{i+1};
    end
    output_list{i+1}=[];
end

count=1;            %���հ�output_list��ȥ������Ŀ����Ԫ�ظ���
final_output_list={};
for i=1:output_index2
    if size(output_list{i})~=0
        final_output_list{count}=output_list{i};
        count=count+1;
    end
end
if output_index1==output_index2         %�ƶ��������һ��
    if output_index2==1
        set(list1,'String',final_output_list,'Value',1);
    else
        set(list1,'String',final_output_list,'Value',output_index2-1);            %�����б�ֵ�����±��value���Զ��ڸ���ǰvalueֵ�Ļ�����+1��
    end
else
    set(list1,'String',final_output_list);            %�����б�ֵ
end
if input_index==0       %��ʼ��ʱ,valueĬ��Ϊ1��������list����գ�value=0;
    set(list2,'String',input_list,'Value',1);
else
    set(list2,'String',input_list);
end

tag=get(list1,'tag');       %��list1Ϊ���б���ѡ��ľ�Ϊ���б�
if strcmp(tag,'listbox_organization_1_1')       %strcmp�ж��ַ����Ƿ���ͬ
    handles.selected_type=input_list;
else
    handles.selected_type=final_output_list;
end
end

%% �Ŷ������桰��һ����(��½����)
function pushbutton_organization_1_4_Callback(hObject,~)
global handles;
set(handles.organization_figure_1,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% �ϴ����ݡ����Ŷ�
function pushbutton_organization_1_2_Callback(hObject,~)
global handles;
persistent h1;
h1=waitbar(0,'����������Ϣ���ϴ���......','WindowStyle','modal');
waitbar(0,h1)
set(handles.text_organization_1_1,'Visible','off');
set(handles.text_organization_1_2,'Visible','off');
sum_type=get(handles.listbox_organization_1_2,'String');
if isempty(sum_type)       %û��ѡ������
    hwarn=warndlg('����ѡ��Ҫ���������Է��������أ�','���棡','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %����Window����icon
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end
file=handles.file2;
if strcmp(file,'Excel�ļ���·����������水ťѡ�񣬲�֧��ֱ�����룩')||isempty(file)      %δ�ϴ����������Ϣ��
    hwarn=warndlg('�����ϴ�����������Ϣ��','���棡','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end

try
    [~,~,raw]=xlsread(file,1);              %��ȡexcel�������ݵ�����
    [row,~]=size(raw);
    count_person=row-2;
    clear raw;             %�������raw
    %��������ʼ
    count1=3;    %�������ܳ���
    step=0;
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %����Window����icon
    dlgFrame = get(h1,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    waitbar(step/count1,h1)
    count_type=numel(handles.selected_type);    %����Ա�����Ŀ
    information_sets=zeros(count_person,count_type+2);            %�Ŷ���Ա��Ϣ����
    %     information_sets_duplicate=cell(count_person,count_type+2);
    information_sets_name={};
    title={[1 4 12 27 40 42 48 49 52 53 56 58],         %10*1 cell
        [3 9 10 28 38 45 46 51 55 65],
        [6 21 34 36 37 41 61 69 73],
        [5 14 15 20 22 26 29 30 31 32 54 71 79],
        [2 17 23 33 39 57 72 78 80 86],
        [11 24 63 67 74 81],
        [13 25 47 50 70 75 82],
        [8 18 43 68 76 83],
        [7 16 35 62 77 84 85 87 88 90],
        [19 44 59 60 64 66 89]};           %����Ŀ��Ӧ����Ŀ���
    secondary_weights=zeros(1,10);      %����Ȩ��
    level1_weights=[1/12 1/10 1/9 1/13 1/10 1/6 1/7 1/6 1/10 1/7];         %һ��Ȩ��
    %��Ҫ��õ���
    factor_average=zeros(1,10);         %���Ӿ���
    %�洢������Ϣ
    type_index=zeros(1,count_type);          %��ѡ�����͵��±�
    %Ϊ���ø���ť��UserData(��ʾ���Ե�uitableֵ)
    hbuttons=findobj(handles.organization_figure_2,'-depth',3,'-regexp','Tag','pushbutton_organization_2_[1-9]?\d');     %����������ʽ������ֵ�ҡ�obj��
    hbuttons=flipud(hbuttons);          %���·�ת����
    row_name=cell(count_type,6);        %��Ÿ�uitable����title
    step=step+1;                %����������
    waitbar(step/count1,h1)
    for q=1:count_person
        [num0,txt0,raw0]=xlsread(file,1,sprintf('%c%d:%c%c%d',65,q+2,68,72,q+2));
        %���ݳ�ʼ��
        flag=1;         %��־��ѡ����
        Ui=zeros(1,10);     %10���и�������ܷ�
        A=zeros(1,10);      %A,B,C,D��Ԫ��ϵ��������������Ŀ����Ŀ��
        B=zeros(1,10);
        C=zeros(1,10);
        D=zeros(1,10);
        sum_factors=0;        %���ӷ��ܷ�
        %��ʼ����
        for i=1:10      %�ɿ���ǿ��ת��������������������������������
            for j=1:length(title{i,1})          %length�᷵�ؾ����еġ��������
                for k=1:5
                    if eq(raw0{1,title{i,1}(1,j)+22},k)           %class(raw0{title{1,i}(1,j),k})���ɲ鿴��������
                        Ui(1,i)=Ui(1,i)+k;
                        if k<=2
                            A(1,i)=A(1,i)+1;
                        elseif k==3
                            B(1,i)=B(1,i)+1;
                        elseif k==4
                            C(1,i)=C(1,i)+1;
                        else
                            D(1,i)=D(1,i)+1;
                        end
                        break;
                    end
                end
            end
            factor_average(1,i)=Ui(1,i)*level1_weights(1,i);        %������
        end
        for i=1:10              %����Ȩ��
            sum_factors=sum_factors+factor_average(1,i);
        end
        for i=1:10
            secondary_weights(1,i)=factor_average(1,i)/sum_factors;
        end
        %������ϵ��
        value_A=0;
        value_B=0;
        value_C=0;
        value_D=0;
        for i=1:10                  %��ϵ��A
            value_A=value_A+A(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        for i=1:10                  %��ϵ��B
            value_B=value_B+B(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        for i=1:10                  %��ϵ��C
            value_C=value_C+C(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        for i=1:10                  %��ϵ��D
            value_D=value_D+D(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        %�ж��Ƿ�Ϊ�ǽ���
        temp=0;     %���ڴ洢a,b,c,d��С��ϵ�ܺ�
        if value_A>value_D                  %A&D
            temp=temp+76;
        elseif value_A==value_D
            temp=temp+40;
        else
            temp=temp+4;
        end
        if value_A>value_B                  %A&B
            temp=temp+25;
        elseif value_A==value_B
            temp=temp+14;
        else
            temp=temp+3;
        end
        if value_B>value_C                  %B&C
            temp=temp+8;
        elseif value_B==value_C
            temp=temp+5;
        else
            temp=temp+2;
        end
        if value_C>value_D                  %C&D
            temp=temp+3;
        elseif value_C==value_D
            temp=temp+2;
        else
            temp=temp+1;
        end
        if temp<=109          %�洢����״̬
            %             information_sets_duplicate{q,count_type+2}=1;       %���ǽ���һ̬���ǽ�����̬������̬��
            information_sets(q,count_type+2)=1;
        else
            %             information_sets_duplicate{q,count_type+2}=2;
            information_sets(q,count_type+2)=2;
        end
        raw1=raw0(1,1);  %����
        information_sets_name{q}=raw1;      %�洢����
        %         information_sets_duplicate{q,1}=q;
        information_sets(q,1)=q;        %�洢����ID
        raw2=raw0(1,2:7);  %�������أ��Ա����䡢����״����ְҵ���Ը����͡��Ļ��̶ȣ�
        raw3=raw0(1,8:13);  %��ͥ���أ���ͥ��𡢼�ͥ�˿�������ͥ���롢��ͥ���ƶ��������ͥ������
        raw4=raw0(1,14:18);  %������أ�֪�����ѡ��������ζ���Ƿ����˰������Ƿ�赽2000Ԫ��
        raw5=raw0(1,19:22);  %��Ϊ���ʽ���������������������������������͹��ɣ�
        while 1              %�洢�����������ѡ���ͣ�
            %��������
            type_name=handles.selected_type{flag};
            type_num=regexp(type_name,'-','split');      %�ָ��ַ����õ����غ���
            if strcmp(type_num{1,1},'1')  %�Ա�
                if q==1
                    type_index(1,flag)=1;           %������ͱ�ѡ��
                    set(hbuttons(1,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{1,2};
                if strcmp(raw2{1,1},'��')
                    information_sets(q,flag+1)=1;
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                else
                    if ~strcmp(row_name{flag,2},'Ů')
                        row_name{flag,2}='Ů';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'2')  %����
                if q==1
                    type_index(1,flag)=2;
                    set(hbuttons(2,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{2,2};
                if raw2{1,2}<21
                    if ~strcmp(row_name{flag,1},'<21')
                        row_name{flag,1}='<21';
                    end
                    information_sets(q,flag+1)=1;
                elseif raw2{1,2}>=21&&raw2{1,2}<=30
                    if ~strcmp(row_name{flag,2},'21-30')
                        row_name{flag,2}='21-30';
                    end
                    information_sets(q,flag+1)=2;
                elseif raw2{1,2}>=31&&raw2{1,2}<=40
                    if ~strcmp(row_name{flag,3},'31-40')
                        row_name{flag,3}='31-40';
                    end
                    information_sets(q,flag+1)=3;
                elseif raw2{1,2}>=41&&raw2{1,2}<=50
                    if ~strcmp(row_name{flag,4},'41-50')
                        row_name{flag,4}='41-50';
                    end
                    information_sets(q,flag+1)=4;
                else
                    if ~strcmp(row_name{flag,5},'>50')
                        row_name{flag,5}='>50';
                    end
                    information_sets(q,flag+1)=5;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'3')  %����״��
                if q==1
                    type_index(1,flag)=3;
                    set(hbuttons(3,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{3,2};
                if eq(raw2{1,3},1)
                    if ~strcmp(row_name{flag,1},'δ��')
                        row_name{flag,1}='δ��';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,3},2)
                    if ~strcmp(row_name{flag,2},'�ѻ�')
                        row_name{flag,2}='�ѻ�';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,3},3)
                    if ~strcmp(row_name{flag,3},'����')
                        row_name{flag,3}='����';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'ɥż')
                        row_name{flag,4}='ɥż';
                    end
                    information_sets(q,flag+1)=4;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'4')  %ְҵ
                if q==1
                    type_index(1,flag)=4;
                    set(hbuttons(4,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{4,2};
                if eq(raw2{1,4},1)
                    if ~strcmp(row_name{flag,1},'ũ��')
                        row_name{flag,1}='ũ��';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,4},2)
                    if ~strcmp(row_name{flag,2},'����')
                        row_name{flag,2}='����';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,4},3)
                    if ~strcmp(row_name{flag,3},'ѧ��')
                        row_name{flag,3}='ѧ��';
                    end
                    information_sets(q,flag+1)=3;
                elseif eq(raw2{1,4},4)
                    if ~strcmp(row_name{flag,4},'����')
                        row_name{flag,4}='����';
                    end
                    information_sets(q,flag+1)=4;
                elseif strcmp(raw2{1,4},'ʧҵ')
                    if ~strcmp(row_name{flag,5},'ʧҵ')
                        row_name{flag,5}='ʧҵ';
                    end
                    information_sets(q,flag+1)=5;
                else
                    if ~strcmp(row_name{flag,6},'����')
                        row_name{flag,6}='����';
                    end
                    information_sets(q,flag+1)=6;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'5')  %�Ը�����
                if q==1
                    type_index(1,flag)=5;
                    set(hbuttons(5,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{5,2};
                if eq(raw2{1,5},1)
                    if ~strcmp(row_name{flag,1},'����')
                        row_name{flag,1}='����';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,5},2)
                    if ~strcmp(row_name{flag,2},'����������֮��')
                        row_name{flag,2}='����������֮��';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,5},3)
                    if ~strcmp(row_name{flag,3},'�����')
                        row_name{flag,3}='�����';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'����')
                        row_name{flag,4}='����';
                    end
                    information_sets(q,flag+1)=4;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'6')  %�Ļ��̶�
                if q==1
                    type_index(1,flag)=6;
                    set(hbuttons(6,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{6,2};
                if eq(raw2{1,6},1)
                    if ~strcmp(row_name{flag,1},'��ä')
                        row_name{flag,1}='��ä';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,6},2)
                    if ~strcmp(row_name{flag,2},'Сѧ')
                        row_name{flag,2}='Сѧ';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,6},3)
                    if ~strcmp(row_name{flag,3},'����')
                        row_name{flag,3}='����';
                    end
                    information_sets(q,flag+1)=3;
                elseif eq(raw2{1,6},4)
                    if ~strcmp(row_name{flag,4},'����')
                        row_name{flag,4}='����';
                    end
                    information_sets(q,flag+1)=4;
                else
                    if ~strcmp(row_name{flag,5},'��ר����')
                        row_name{flag,5}='��ר����';
                    end
                    information_sets(q,flag+1)=5;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            %��ͥ����
            if strcmp(type_num{1,1},'7')    %��ͥ���
                if q==1
                    type_index(1,flag)=7;
                    set(hbuttons(7,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{1,2};
                if eq(raw3{1,1},1)
                    if ~strcmp(row_name{flag,1},'����')
                        row_name{flag,1}='����';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw3{1,1},2)
                    if ~strcmp(row_name{flag,2},'ũ��')
                        row_name{flag,2}='ũ��';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'���')
                        row_name{flag,3}='���';
                    end
                    information_sets(q,flag+1)=3;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'8')    %��ͥ�˿���
                if q==1
                    type_index(1,flag)=8;
                    set(hbuttons(8,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{2,2};
                if eq(raw3{1,2},1)
                    if ~strcmp(row_name{flag,1},'1')
                        row_name{flag,1}='1';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw3{1,2},2)
                    if ~strcmp(row_name{flag,2},'2')
                        row_name{flag,2}='2';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw3{1,2},3)
                    if ~strcmp(row_name{flag,3},'[3-4]')
                        row_name{flag,3}='3-4';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'>5')
                        row_name{flag,4}='>5';
                    end
                    information_sets(q,flag+1)=4;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'9')    %��ͥ����
                if q==1
                    type_index(1,flag)=9;
                    set(hbuttons(9,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{3,2};
                if eq(raw3{1,3},1)
                    if ~strcmp(row_name{flag,1},'<4000')
                        row_name{flag,1}='<4000';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw3{1,3},2)
                    if ~strcmp(row_name{flag,2},'[4000-8000]')
                        row_name{flag,2}='4000-8000';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw3{1,3},3)
                    if ~strcmp(row_name{flag,3},'[8000-12000]')
                        row_name{flag,3}='8000-12000';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'>12000')
                        row_name{flag,4}='>12000';
                    end
                    information_sets(q,flag+1)=4;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'10')    %��ͥ����
                if q==1
                    type_index(1,flag)=10;
                    set(hbuttons(10,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{4,2};
                if eq(raw3{1,4},1)
                    if ~strcmp(row_name{flag,1},'һ��')
                        row_name{flag,1}='һ��';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw3{1,4},2)
                    if ~strcmp(row_name{flag,2},'������')
                        row_name{flag,2}='������';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'����')
                        row_name{flag,3}='����';
                    end
                    information_sets(q,flag+1)=3;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'11')    %�Ƿ�ƶ����
                if q==1
                    type_index(1,flag)=11;
                    set(hbuttons(11,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{5,2};
                if eq(raw3{1,5},1)
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'��')
                        row_name{flag,2}='��';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'12')    %�Ƿ��ͥ����
                if q==1
                    type_index(1,flag)=12;
                    set(hbuttons(12,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{6,2};
                if eq(raw3{1,6},1)
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'��')
                        row_name{flag,2}='��';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            %�������
            if strcmp(type_num{1,1},'13')        %����֪������
                if q==1
                    type_index(1,flag)=13;
                    set(hbuttons(13,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{1,2};
                if eq(raw4{1,1},1)
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'��')
                        row_name{flag,2}='��';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'14')        %�����Ƿ񵥵���ζ
                if q==1
                    type_index(1,flag)=14;
                    set(hbuttons(14,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{2,2};
                if eq(raw4{1,2},1)
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'��')
                        row_name{flag,2}='��';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'15')        %���������Ƿ����˰���
                if q==1
                    type_index(1,flag)=15;
                    set(hbuttons(15,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{3,2};
                if eq(raw4{1,3},1)
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'��')
                        row_name{flag,2}='��';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'16')        %����������ܽ赽2000Ԫ
                if q==1
                    type_index(1,flag)=16;
                    set(hbuttons(16,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{4,2};
                if eq(raw4{1,4},1)
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'��')
                        row_name{flag,2}='��';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'17')        %�Ƿ�μ������
                if q==1
                    type_index(1,flag)=17;
                    set(hbuttons(17,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{5,2};
                if eq(raw4{1,5},1)
                    if ~strcmp(row_name{flag,1},'���μ�')
                        row_name{flag,1}='���μ�';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw4{1,5},2)
                    if ~strcmp(row_name{flag,2},'ż���μ�')
                        row_name{flag,2}='ż���μ�';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'�����μ�')
                        row_name{flag,3}='�����μ�';
                    end
                    information_sets(q,flag+1)=3;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            %��Ϊ���ʽ
            if strcmp(type_num{1,1},'18')    %����
                if q==1
                    type_index(1,flag)=18;
                    set(hbuttons(18,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{1,2};
                if eq(raw5{1,1},1)
                    if ~strcmp(row_name{flag,1},'�ѽ���')
                        row_name{flag,1}='�ѽ���';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw5{1,1},2)
                    if ~strcmp(row_name{flag,2},'��������')
                        row_name{flag,2}='��������';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw5{1,1},3)
                    if ~strcmp(row_name{flag,3},'ż����')
                        row_name{flag,3}='ż����';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'������')
                        row_name{flag,4}='������';
                    end
                    information_sets(q,flag+1)=4;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'19')    %����
                if q==1
                    type_index(1,flag)=19;
                    set(hbuttons(19,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{2,2};
                if eq(raw5{1,2},1)
                    if ~strcmp(row_name{flag,1},'�ѽ��')
                        row_name{flag,1}='�ѽ��';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw5{1,2},2)
                    if ~strcmp(row_name{flag,2},'��������')
                        row_name{flag,2}='��������';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw5{1,2},3)
                    if ~strcmp(row_name{flag,3},'ż����')
                        row_name{flag,3}='ż����';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'��������')
                        row_name{flag,4}='��������';
                    end
                    information_sets(q,flag+1)=4;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'20')    %��������
                if q==1
                    type_index(1,flag)=20;
                    set(hbuttons(20,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{3,2};
                if eq(raw5{1,3},1)
                    if ~strcmp(row_name{flag,1},'�Ӳ�')
                        row_name{flag,1}='�Ӳ�';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw5{1,3},2)
                    if ~strcmp(row_name{flag,2},'ż��')
                        row_name{flag,2}='ż��';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'����')
                        row_name{flag,3}='����';
                    end
                    information_sets(q,flag+1)=3;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
            if strcmp(type_num{1,1},'21')        %�����Ƿ����
                if q==1
                    type_index(1,flag)=21;
                    set(hbuttons(21,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{4,2};
                if eq(raw5{1,4},1)
                    if ~strcmp(row_name{flag,1},'��')
                        row_name{flag,1}='��';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'��')
                        row_name{flag,2}='��';
                    end
                    information_sets(q,flag+1)=2;
                end
                if flag==count_type
                    break;
                else
                    flag=flag+1;
                    continue;
                end
            end
        end
    end
    step=step+1;                %����������
    waitbar(step/count1,h1)
    
    %--------------------------------------------------------------------
%     herr=errordlg('2��','������Ϣ','modal');
    
    handles.type_index=type_index;
    handles.information_sets=information_sets;
    handles.information_sets_name=information_sets_name;
    %Ԥ�ȴ洢�������б��⣨��ѡ��ģ�
    real_row_name={};           %��cell����һ��
    for i=1:count_type
        temp=1;
        for j=1:6
            if ~isempty(row_name{i,j})   %�ж�Ԫ���Ƿ�Ϊ�վ���
                real_row_name{i,1}{1,temp}=row_name{i,j};       %cell�������������ݵ�����С
                temp=temp+1;
            end
        end
    end
    
    %--------------------------------------------------------------------
%     herr=errordlg('2.5��','������Ϣ','modal');
    
    %װ�����
    handles.real_row_name=real_row_name;            %��title
    handles.columnName={'�ǽ���̬','����̬','�ϼ�',...
        '<html><center>�ǽ���̬<br />������</center></html>','X2','P'};      %��title
    handles.count_person=count_person;            %��������
    step=step+1;                %����������
    waitbar(step/count1,h1)
    
    %--------------------------------------------------------------------
%     herr=errordlg('3��','������Ϣ','modal');
    
catch
    close(h1);      %�رս�����
    herr=errordlg('���������Ϣ�����ݸ�ʽ����','������Ϣ','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %����Window����icon
    dlgFrame = get(herr,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    set(handles.text_organization_1_1,'Visible','on');
    return;
end
close(h1);      %�رս�����
set(handles.text_organization_1_2,'Visible','on');
end

%% �Ŷ������桰��һ����(�����ط���)
function pushbutton_organization_1_5_Callback(hObject,~)
global handles;
hasupload=get(handles.text_organization_1_2,'Visible');       %ͨ���鿴�ɹ��ϴ���ǩ�Ƿ�ɼ��ж��Ƿ��ϴ��ɹ�
if strcmp(hasupload,'off')
    hwarn=warndlg('���ȳɹ��ϴ�����������Ϣ��','���棡','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end
set(handles.organization_figure_1,'Visible','off');     %��ʼ������
set(handles.edit__organization_2_1,'String','');
set(handles.text_organization_2_5,'Visible','off');
set(handles.text_organization_2_6,'Visible','off');
set(handles.text_organization_2_7,'Visible','off');
%���ѡ���˵����Ͱ�ť
hbuttons=findobj(handles.organization_figure_2,'-depth',3,'-regexp','Tag','pushbutton_organization_2_[1-9]?\d');     %����������ʽ������ֵ�ҡ�obj��
hbuttons=flipud(hbuttons);          %���·�ת����
for i=1:length(handles.type_index)
    set(hbuttons(handles.type_index(1,i),1),'Enable','on');
end
count_type=numel(handles.selected_type);    %����Ա�����Ŀ
data_uitable=cell(count_type,1);        %�洢�������ֵ�uitable����
[row col]=size(handles.information_sets);
%��һ���������Լ���
y=handles.information_sets(1:row,col);          %�����
for i=2:count_type+1
    x=handles.information_sets(1:row,i);        %�Ա���
    if handles.count_person>=40      %���п������������(����������У����������)
        [table, chi2, p, h,isfisher_buff]=crosstab_duplicate(x,y);
        [row2 col2]=size(table);
        if isfisher_buff||row2>2        %isfisher_buffΪ�棬��������>=40,������PԼ����0.05����������������<1������ΪR*2�б���fisher��ȷ����
            chi2=NaN;
            chi2_matrix=repmat(NaN,row2,1);     %int8/16/32 ǿ��ת��
            chi2_matrix(1,1)=chi2;
            count_buff=sum(table,2);       %���Ա����ĺϼ�(�к�)
            probability=table(1:row2,1)./count_buff;        %���Ա������·ǽ���̬�ĸ���
            if row2>1               %�����>1
                [p,h]=myfisher_duplicate(table);
                p_matrix=repmat(NaN,row2,1);
                p_matrix(1,1)=p;
                table=[table count_buff probability chi2_matrix p_matrix];   %������ϲ���uitableֵ
                data_uitable{i-1,1}=num2cell(table);
            else
                p=NaN;
                p_matrix=repmat(NaN,row2,1);
                p_matrix(1,1)=p;
                table=[table count_buff probability chi2_matrix p_matrix];   %������ϲ���uitableֵ
                data_uitable{i-1,1}=num2cell(table);
            end
        else
            chi2_matrix=repmat(NaN,row2,1);     %int8/16/32 ǿ��ת��
            chi2_matrix(1,1)=chi2;
            p_matrix=repmat(NaN,row2,1);
            p_matrix(1,1)=p;
            count_buff=sum(table,2);       %���Ա����ĺϼ�(�к�)
            probability=table(1:row2,1)./count_buff;        %���Ա������·ǽ���̬�ĸ���
            table=[table count_buff probability chi2_matrix p_matrix];   %������ϲ���uitableֵ
            data_uitable{i-1,1}=num2cell(table);
        end
    else      %������<40(fisher��ȷ����)
        [table]=crosstab_duplicate(x,y);
        [row2 col2]=size(table);
        chi2=NaN;
        chi2_matrix=repmat(NaN,row2,1);     %int8/16/32 ǿ��ת��
        chi2_matrix(1,1)=chi2;
        count_buff=sum(table,2);       %���Ա����ĺϼ�(�к�)
        probability=table(1:row2,1)./count_buff;        %���Ա������·ǽ���̬�ĸ���
        if row2>1               %�����>1
            [p,h]=myfisher_duplicate(table);
            p_matrix=repmat(NaN,row2,1);
            p_matrix(1,1)=p;
            table=[table count_buff probability chi2_matrix p_matrix];   %������ϲ���uitableֵ
            data_uitable{i-1,1}=num2cell(table);
        else
            p=NaN;
            p_matrix=repmat(NaN,row2,1);
            p_matrix(1,1)=p;
            table=[table count_buff probability chi2_matrix p_matrix];   %������ϲ���uitableֵ
            data_uitable{i-1,1}=num2cell(table);
        end
    end
end

hasdisplay_uitable1=false;
hasdisplay_uitable2=false;
hasdisplay_uitable3=false;
hasdisplay_uitable4=false;
%�����ط��������ʼ�����ݱ����ʾ
% buff=zeros(1,1);
for i=1:21          %21���л���ť
    index=get(hbuttons(i,1),'UserData');
    if strcmp(get(hbuttons(i,1),'Enable'),'on')
        s=get(hbuttons(i,1),'String');      %���ñ����
        s=strcat(s,'���������Լ���');
        if i>=1&&i<=6           %��������uitable
            if hasdisplay_uitable1              %�Ѿ���������ʾ
                continue;
            end
            set(handles.text_organization_2_1,'String',s);
            pre_save=data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ��������������ݸ�ʽ�����仯���޷���������if���ж�
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05          %��ʾͼ�꣬˵������������
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_1);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax1=handles.axes_organization_2_5;        %ˮƽ����ͼ�����ʣ�
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %���·�ת����Ӧ����
                b1=barh(ax1,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax1,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b1=b1;
            end
            set(handles.uitable_organization_2_1,'RowName',handles.real_row_name{index},...     %���ñ��
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
            hasdisplay_uitable1=true;
        elseif i>6&&i<=12           %��ͥ����uitable
            if hasdisplay_uitable2              %�Ѿ���������ʾ
                continue;
            end
            set(handles.text_organization_2_2,'String',s);
            pre_save=data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ��������������ݸ�ʽ�����仯���޷���������if���ж�
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05           %��ʾͼ�꣬˵������������
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_2);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax2=handles.axes_organization_2_6;        %ˮƽ����ͼ�����ʣ�
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %���·�ת����Ӧ����
                b2=barh(ax2,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax2,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b2=b2;
            end
            set(handles.uitable_organization_2_2,'RowName',handles.real_row_name{index},...     %���ñ��
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
            hasdisplay_uitable2=true;
        elseif i>12&&i<=17          %�������uitable
            if hasdisplay_uitable3              %�Ѿ���������ʾ
                continue;
            end
            set(handles.text_organization_2_3,'String',s);
            pre_save=data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ��������������ݸ�ʽ�����仯���޷���������if���ж�
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05       %��ʾͼ�꣬˵������������
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_3);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax3=handles.axes_organization_2_7;        %ˮƽ����ͼ�����ʣ�
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %���·�ת����Ӧ����
                b3=barh(ax3,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax3,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b3=b3;
            end
            set(handles.uitable_organization_2_3,'RowName',handles.real_row_name{index},...     %���ñ��
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
            hasdisplay_uitable3=true;
        else           %��Ϊ���ʽuitable
            if hasdisplay_uitable4              %�Ѿ���������ʾ
                continue;
            end
            set(handles.text_organization_2_4,'String',s);
            pre_save=data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ��������������ݸ�ʽ�����仯���޷���������if���ж�
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05           %��ʾͼ�꣬˵������������
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_4);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax4=handles.axes_organization_2_8;        %ˮƽ����ͼ�����ʣ�
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %���·�ת����Ӧ����
                b4=barh(ax4,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax4,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b4=b4;
            end
            set(handles.uitable_organization_2_4,'RowName',handles.real_row_name{index},...     %���ñ��
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
            hasdisplay_uitable4=true;
        end
    end
end
%��ʾ�������
handles.data_uitable=data_uitable;
% save('./interface_2_data/data_uitable.mat','data_uitable');
set(handles.organization_figure_2,'Visible','on');
end

%% �Ŷӡ��������ط�������һ�������Ŷ������棩
function pushbutton_organization_2_22_Callback(hObject,~)
global handles;
hbuttons=findobj(handles.organization_figure_2,'-depth',3,'-regexp','Tag','pushbutton_organization_2_[1-9]?\d');     %����������ʽ������ֵ�ҡ�obj��
hbuttons=flipud(hbuttons);          %���·�ת����
%���¹رհ�ť
for i=1:length(handles.type_index)
    set(hbuttons(handles.type_index(1,i),1),'Enable','off');
end
set(handles.organization_figure_2,'Visible','off');
set(handles.organization_figure_1,'Visible','on');
end

%% �Ŷӡ��������ط�������������ģ�飩
function pushbutton_organization_2_1_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %���ñ����
s=strcat(s,'���������Լ���');
set(handles.text_organization_2_1,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ������������ݸ�ʽ�����仯���޷���������if���ж�
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_1);
    [A,map,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax1=handles.axes_organization_2_5;        %ˮƽ����ͼ�����ʣ�
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %���·�ת����Ӧ����
    b1=barh(ax1,y,0.5,'FaceColor',[0 0.5 0.5]);
    hold on
    set(ax1,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
    hold off
    handles.b1=b1;
else
    axes(handles.axes_organization_2_1);
    [A,map,transparency]=imread('.\images\transparency.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    if isfield(handles,'b1')                %�����ء�axes2
        delete(handles.b1);             %ɾ������
        set(handles.axes_organization_2_5,'Visible','off');
    end
end
set(handles.uitable_organization_2_1,'RowName',handles.real_row_name{index},...     %���ñ��
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
end

%% �Ŷӡ��������ط�������ͥ����ģ�飩
function pushbutton_organization_2_7_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %���ñ����
s=strcat(s,'���������Լ���');
set(handles.text_organization_2_2,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ������������ݸ�ʽ�����仯���޷���������if���ж�
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_2);
    [A,map,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax2=handles.axes_organization_2_6;        %ˮƽ����ͼ�����ʣ�
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %���·�ת����Ӧ����
    b2=barh(ax2,y,0.5,'FaceColor',[0 0.5 0.5]);
    hold on
    set(ax2,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
    hold off
    handles.b2=b2;
else
    axes(handles.axes_organization_2_2);        %����axes1
    [A,map,transparency]=imread('.\images\transparency.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    if isfield(handles,'b2')                %�����ء�axes2
        delete(handles.b2);             %ɾ������
        set(handles.axes_organization_2_6,'Visible','off');
    end
end
set(handles.uitable_organization_2_2,'RowName',handles.real_row_name{index},...     %���ñ��
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
end

%% �Ŷӡ��������ط������������ģ�飩
function pushbutton_organization_2_13_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %���ñ����
s=strcat(s,'���������Լ���');
set(handles.text_organization_2_3,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ������������ݸ�ʽ�����仯���޷���������if���ж�
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_3);
    [A,map,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax3=handles.axes_organization_2_7;        %ˮƽ����ͼ�����ʣ�
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %���·�ת����Ӧ����
    b3=barh(ax3,y,0.5,'FaceColor',[0 0.5 0.5]);
    hold on
    set(ax3,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
    hold off
    handles.b3=b3;
else
    axes(handles.axes_organization_2_3);
    [A,map,transparency]=imread('.\images\transparency.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    if isfield(handles,'b3')                %�����ء�axes2
        delete(handles.b3);             %ɾ������
        set(handles.axes_organization_2_7,'Visible','off');
    end
end
set(handles.uitable_organization_2_3,'RowName',handles.real_row_name{index},...     %���ñ��
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
end

%% �Ŷӡ��������ط�����������Ϊ����ģ�飩
function pushbutton_organization_2_18_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %���ñ����
s=strcat(s,'���������Լ���');
set(handles.text_organization_2_4,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %Ԥ�ȱ��棬��ֹ��Ԫ������������ݸ�ʽ�����仯���޷���������if���ж�
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_4);
    [A,~,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax4=handles.axes_organization_2_8;        %ˮƽ����ͼ�����ʣ�
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %���·�ת����Ӧ����
    b4=barh(ax4,y,0.5,'FaceColor',[0 0.5 0.5]);
    hold on
    set(ax4,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
    hold off
    handles.b4=b4;
else
    axes(handles.axes_organization_2_4);
    [A,map,transparency]=imread('.\images\transparency.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    if isfield(handles,'b4')                %�����ء�axes2
        delete(handles.b4);             %ɾ������
        set(handles.axes_organization_2_8,'Visible','off');
    end
end
set(handles.uitable_organization_2_4,'RowName',handles.real_row_name{index},...     %���ñ��
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %�ָ����ݸ�ʽ
end

%% �Ŷӡ����������������˷�����
function pushbutton_organization_2_25_Callback(hObject,~)
global handles;
handles.file1=handles.file2;        %����excel��·��
count_type=numel(handles.selected_type);    %����Ա�����Ŀ
%��ʼ��
set(handles.text_organization_2_5,'Visible','off');              %��ʧ�ܡ���ǩ
set(handles.text_organization_2_7,'Visible','off');              %���ɹ�����ǩ
set(handles.text_organization_2_6,'Visible','on');              %�������С���ǩ
if ~isvalid(handles.organization_figure_3)
    newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows����icon
    organization_figure_3=figure('Name','�������','Units','normalized',...
        'position',[(1-0.146)/2 (1-0.296)/2 0.146 0.296],'Resize','off','MenuBar','none','ToolBar','none'...
        ,'NumberTitle','off','WindowStyle','normal','Visible','off');
    figFrame7 = get(organization_figure_3,'JavaFrame');
    figFrame7.setFigureIcon(newIcon);
    text_organization_3_1=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
        'Units','normalized','Position',[0.085 0.837 0.585 0.11],'Tag','text_organization_3_1',...
        'String','����������£�','ForegroundColor','[.153 .227 .373 1]','Visible','on');
    handles.text_organization_3_1=text_organization_3_1;
    text_organization_3_2=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
        'Units','normalized','Position',[0.085 0.837 0.76 0.11],'Tag','text_organization_3_2',...
        'String','�ǽ���̬��Ⱥ���£�','ForegroundColor','[.153 .227 .373 1]','Visible','on');
    handles.text_organization_3_2=text_organization_3_2;
    listbox_organization_3_1=uicontrol(organization_figure_3,'Style','listbox','FontSize',10.5,...
        'Units','normalized','Position',[0.12 0.256 0.755 0.559],'Tag','listbox_organization_3_1',...
        'String','','ForegroundColor','[.153 .227 .373 1]','Value',1.0,'TooltipString','ѡ��һ����ȷ�ϣ���ֹһ�Ϊ�����ߣ�');
    handles.listbox_organization_3_1=listbox_organization_3_1;
    pushbutton_organization_3_1=uicontrol(organization_figure_3,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.115 0.053 0.33 0.132],'Tag','pushbutton_organization_3_1',...
        'String','ȡ��','Visible','on','Interruptible','off','BusyAction','cancel',...
        'Callback',@pushbutton_organization_3_1_Callback);
    pushbutton_organization_3_2=uicontrol(organization_figure_3,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.54 0.053 0.33 0.132],'Tag','pushbutton_organization_3_2',...
        'String','ȷ��','Visible','on','Interruptible','off','BusyAction','cancel',...
        'Callback',@pushbutton_organization_3_2_Callback);
    handles.organization_figure_3=organization_figure_3;
end
set(handles.organization_figure_3,'Visible','off');
input_name=get(handles.edit__organization_2_1,'String');
search_name={};                 %����������
isfind=false;
temp=1;
if isempty(input_name)        %edit�ַ���Ϊ�գ��������зǽ���̬��
    set(handles.text_organization_3_2,'Visible','on');
    set(handles.text_organization_3_1,'Visible','off');
    for i=1:handles.count_person
        if eq(handles.information_sets(i,count_type+2),1)
            s=sprintf('%d��%s',handles.information_sets(i,1),char(handles.information_sets_name{i}));
            search_name{temp}=s;        %��־�Ŷ�Ӧ��sheet��־
            temp=temp+1;
            isfind=true;
        end
    end
else                    %�����ض���
    set(handles.text_organization_3_2,'Visible','off');
    set(handles.text_organization_3_1,'Visible','on');
    %�ҵ����ֶ�Ӧ��sheet�±�
    for i=1:handles.count_person
        if strcmp(input_name,handles.information_sets_name{i})
            s=sprintf('%d��%s',handles.information_sets(i,1),char(handles.information_sets_name{i}));
            search_name{temp}=s;        %��־�Ŷ�Ӧ��sheet��־
            temp=temp+1;
            isfind=true;
        end
    end
end
%�������
if ~isfind          %û���ҵ�Ŀ��
    set(handles.text_organization_2_6,'Visible','off');
    set(handles.text_organization_2_5,'Visible','on');      %������ʧ�ܡ���ǩ
else        %���ҳɹ�
    set(handles.text_organization_2_6,'Visible','off');
    set(handles.text_organization_2_7,'Visible','on');      %�������ɹ�����ǩ
    set(handles.organization_figure_3,'Visible','on');
    set(handles.listbox_organization_3_1,'String',search_name,'Value',1.0);
end
end

%% ������ȷ�ϡ�
function pushbutton_organization_3_2_Callback(hObject,~)
global handles;
handles.file1=handles.file2;        %����excel��·��
list_string=get(handles.listbox_organization_3_1,'String');
list_value=get(handles.listbox_organization_3_1,'Value');       %����б�ѡ���е�����
list_selected=list_string{list_value};
sheet_index=regexp(list_selected,'��','split');      %�ָ��ַ����õ����˶�Ӧ��sheet����
pushbutton_individual_1_2_Callback(NaN,NaN,true,sheet_index{1,1});       %
pushbutton_individual_1_5_Callback(NaN,NaN);

end

%% ������ȡ����
function pushbutton_organization_3_1_Callback(hObject,~)
global handles;
set(handles.organization_figure_3,'Visible','off');
end















