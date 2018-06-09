function varargout = psychologicalAssessment_duplicate(varargin)
clear;
clc;

h=splash('.\images\background.png');      %系统初始化动画

%导入java包
import javax.swing.*;

global handles;     %结构体（各个组件的句柄、源文件路径等）
handles.file1='';
handles.file2='';
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows窗口icon

%% 个人——上传源数据(主界面)
individual_figure_1=figure('Name','心理健康状况评估系统——INDIVIDUAL','Units','normalized',...
    'position',[(1-0.441)/2 (1-0.393)/2 0.441 0.393],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame2 = get(individual_figure_1,'JavaFrame');
figFrame2.setFigureIcon(newIcon);
uipanel_individual_1=uipanel(individual_figure_1,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.017 0.04 0.957 0.927],'Tag','uipanel_individual_1',...
    'Title','上传源数据','Visible','on','FontWeight','bold');
handles.uipanel_individual_1=uipanel_individual_1;
pushbutton_individual_1_1=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',9.0,'Units','normalized',...
    'Position',[0.045 0.801 0.171 0.124],'Tag','pushbutton_individual_1_1',...
    'String','心理评测表','Visible','on','Interruptible','off','BusyAction','cancel');
edit_individual_1_1=uicontrol(uipanel_individual_1,'Style','edit','FontSize',10.0,...
    'Units','normalized','Position',[0.305 0.798 0.618 0.12],'Tag','edit_individual_1_1',...
    'Visible','on','Enable','inactive','BackgroundColor',[.831 .816 .784 1],...
    'String','Excel文件的路径（点击左面按钮选择，不支持直接输入）','ForegroundColor',[0.314 0.314 0.314 0.314]);
handles.edit_individual_1_1=edit_individual_1_1;
pushbutton_individual_1_2=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',12.0,'Units','normalized',...
    'Position',[0.682 0.584 0.239 0.142],'Tag','pushbutton_individual_1_2','String','上传数据',...
    'Visible','on','Interruptible','off','BusyAction','cancel','FontWeight','bold');
text_individual_1_1=uicontrol(uipanel_individual_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.047 0.416 0.3 0.101],'Tag','text_individual_1_1',...
    'String','心里评测表上传失败！','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[1 0 0 1]');
handles.text_individual_1_1=text_individual_1_1;
text_individual_1_2=uicontrol(uipanel_individual_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.047 0.416 0.3 0.101],'Tag','text_individual_1_2',...
    'String','心里评测表上传成功！','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[.153 .227 .373 1]');
handles.text_individual_1_2=text_individual_1_2;
pushbutton_individual_1_3=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.215 0.142 0.201 0.127],'Tag','pushbutton_individual_1_3',...
    'String','操作提示','Visible','on','Interruptible','off','BusyAction','cancel',...
    'Callback',@help_individual_1);
pushbutton_individual_1_4=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.476 0.142 0.201 0.127],'Tag','pushbutton_individual_1_4','FontWeight','bold',...
    'String','<< 上一步','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_individual_1_5=uicontrol(uipanel_individual_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.736 0.142 0.201 0.127],'Tag','pushbutton_individual_1_5','FontWeight','bold',...
    'String','下一步 >>','Visible','on','Interruptible','off','BusyAction','cancel');
% handles.pushbutton_individual_1_5=pushbutton_individual_1_5;
handles.individual_figure_1=individual_figure_1;

%% 个人体验报告界面——Part1
individual_figure_2=figure('Name','个人体检报告——Part1','Units','normalized',...
    'position',[(1-0.928)/2 (1-0.635)/2 0.928 0.635],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame3 = get(individual_figure_2,'JavaFrame');
figFrame3.setFigureIcon(newIcon);
uipanel_individual_2=uipanel(individual_figure_2,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.003 0.006 0.992 0.982],'Tag','uipanel_individual_2',...
    'Title','90项症状自评量表（SCL-90）测评结果——Part1','Visible','on','FontWeight','bold');
uipanel_individual_2_1=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.006 0.011 0.204 0.951],'Tag','uipanel_individual_2_1',...
    'Title','基本情况','Visible','on','FontWeight','bold');
uipanel_individual_2_2=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.215 0.009 0.781 0.953],'Tag','uipanel_individual_2_2',...
    'Title','测试结果','Visible','on','FontWeight','bold');
text_individual_2_1=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.076 0.905 0.238 0.046],'Tag','text_individual_2_1',...
    'String','姓名：','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
text_individual_2_2=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.249 0.899 0.71 0.052],'Tag','text_individual_2_2',...
    'String','姓名','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
handles.text_individual_2_2=text_individual_2_2;
text_individual_2_3=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.075 0.851 0.237 0.046],'Tag','text_individual_2_3',...
    'String','性别：','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
text_individual_2_4=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.257 0.855 0.191 0.042],'Tag','text_individual_2_4',...
    'String','性别','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
handles.text_individual_2_4=text_individual_2_4;
text_individual_2_5=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.498 0.856 0.195 0.041],'Tag','text_individual_2_5',...
    'String','年龄：','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
text_individual_2_6=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.705 0.858 0.183 0.039],'Tag','text_individual_2_6',...
    'String','年龄','HorizontalAlignment','left','Visible','on',...
    'ForegroundColor',[.153 .227 .373 1]);
handles.text_individual_2_6=text_individual_2_6;
uipanel_individual_2_1_1=uipanel(uipanel_individual_2_1,'FontSize',10,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.028 0.019 0.952 0.812],'Tag','uipanel_individual_2_1_1',...
    'Title','温馨提示','Visible','on','FontAngle','italic');
s=['按全国常模结果，满足以下任一标准，可考虑筛查阳性，需进一步检查：' char(10) '1、总分超过160分；' char(10) '2、阳性项目数超过43项；' char(10) '3、任一因子分超过2分。' char(10) '大于250分则比较严重，需要作医学上的详细检查，很可能要做针对性的心理治疗或在医生的指导下服药。' char(10) '*本评估系统心理健康评价等级分为四大类：健康态、亚健康一态度、亚健康二态、疾病态，各类又依次分成3级、16级、13级、19级，即共51级，级别越高，离健康态越远。'];
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
    'String','回到主页','Visible','on','Interruptible','off','BusyAction','cancel');
handles.pushbutton_individual_2_1=pushbutton_individual_2_1;
pushbutton_individual_2_2=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.584 0.058 0.137 0.084],'Tag','pushbutton_individual_2_2','FontWeight','bold',...
    'String','<< 上一步','Visible','on','Interruptible','off','BusyAction','cancel');
handles.pushbutton_individual_2_2=pushbutton_individual_2_2;
pushbutton_individual_2_3=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.776 0.058 0.137 0.084],'Tag','pushbutton_individual_2_3','FontWeight','bold',...
    'String','下一步 >>','Visible','on','Interruptible','off','BusyAction','cancel');
uitable_individual_2_1=uitable(uipanel_individual_2_2,'Units','normalized',...
    'Position',[0.761 0.346 0.217 0.540],'ColumnWidth',{42 'auto'});
handles.uitable_individual_2_1=uitable_individual_2_1;
handles.individual_figure_2=individual_figure_2;

%% 个人体验报告界面——Part2
screenposition=get(0,'screensize');
x=(screenposition(3)-658)/2;
y=(screenposition(4)-467)/2;
individual_figure_3=uifigure('Name','个人体检报告——Part2','Position',[x y 656 442],...
    'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','Visible','off');
uipanel_individual_3=uipanel(individual_figure_3,'FontSize',15.33,'ForegroundColor',[.153 .227 .373 1],...
    'Position',[8 7 643 428],'Tag','uipanel_individual_3','Title','90项症状自评量表（SCL-90）测评结果——Part2',...
    'Visible','on','FontWeight','bold');
label_individual_3_1=uilabel(uipanel_individual_3,'Position',[9 285 260 51],'FontSize',13.33...
    ,'FontColor',[.153 .227 .373]);
handles.label_individual_3_1=label_individual_3_1;
label_individual_3_2=uilabel(uipanel_individual_3,'Position',[354 312 52 23],'FontSize',13.33...
    ,'FontColor',[.153 .227 .373],'Text','总分：');
textarea__individual_3_1=uitextarea(uipanel_individual_3,'HorizontalAlignment','left',...
    'Position',[10 9 523 266],'FontColor',[.153 .227 .373]','FontSize',13.33,'Editable','off');
handles.textarea__individual_3_1=textarea__individual_3_1;
pushbutton_individual_3_1=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
    'FontSize',14.0,'Position',[542 11 90 35],'FontWeight','bold','Text','<< 上一步');
pushbutton_individual_3_2=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
    'FontSize',14.0,'Position',[542 72 90 35],'Text','回到主页','FontWeight','bold');
handles.pushbutton_individual_3_2=pushbutton_individual_3_2;
pushbutton_individual_3_3=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
    'FontSize',14.0,'Position',[263 285 60 60],'Text','');          %插入图标
handles.pushbutton_individual_3_3=pushbutton_individual_3_3;
gauge_individual_3_1=uigauge(uipanel_individual_3,'Limits',[0 450],...       %仪表盘
    'MajorTicks',[90:60:450],'MajorTickLabels',{'90','150','210','270','330','390','450'},...
    'MinorTicks',[90:12:450],'Value',0,'ScaleDirection','clockwise','FontSize',11,...
    'FontColor',[.153 .227 .373],'Position',[412 279 120 120],'ScaleColors',[1 0.84 0;1 0.27 0;0.86 0.08 0.24],...
    'ScaleColorLimits',[180 270;270 360;360 450]);
handles.gauge_individual_3_1=gauge_individual_3_1;
handles.individual_figure_3=individual_figure_3;

%% 团队——上传源数据(主界面)
organization_figure_1=figure('Name','心理健康状况评估系统——ORGANIZATION','Units','normalized',...
    'position',[(1-0.504)/2 (1-0.648)/2 0.504 0.648],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame5 = get(organization_figure_1,'JavaFrame');
figFrame5.setFigureIcon(newIcon);
uipanel_organization_1=uipanel(organization_figure_1,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.01 0.014 0.98 0.97],'Tag','uipanel_organization_1',...
    'Title','上传源数据','Visible','on','FontWeight','bold');
handles.uipanel_organization_1=uipanel_organization_1;
pushbutton_organization_1_1=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',9.0,'Units','normalized',...
    'Position',[0.027 0.851 0.12 0.07],'Tag','pushbutton_organization_1_1',...
    'String','心理评测表','Visible','on','Interruptible','off','BusyAction','cancel');
edit_organization_1_1=uicontrol(uipanel_organization_1,'Style','edit','FontSize',10.0,...
    'Units','normalized','Position',[0.272 0.851 0.528 0.068],'Tag','edit_organization_1_1',...
    'Visible','on','Enable','inactive','BackgroundColor',[.831 .816 .784 1],...
    'String','Excel文件的路径（点击左面按钮选择，不支持直接输入）','ForegroundColor',[0.314 0.314 0.314 0.314]);
handles.edit_organization_1_1=edit_organization_1_1;
pushbutton_organization_1_2=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',12.0,'Units','normalized',...
    'Position',[0.6 0.664 0.204 0.081],'Tag','pushbutton_organization_1_2','String','上传数据',...
    'Visible','on','Interruptible','off','BusyAction','cancel','FontWeight','bold');
text_organization_1_1=uicontrol(uipanel_organization_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.051 0.568 0.257 0.07],'Tag','text_organization_1_1',...
    'String','心里评测表上传失败！','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[1 0 0 1]');
handles.text_organization_1_1=text_organization_1_1;
text_organization_1_2=uicontrol(uipanel_organization_1,'Style','text','FontSize',11.0,...
    'Units','normalized','Position',[0.051 0.568 0.257 0.07],'Tag','text_organization_1_2',...
    'String','心里评测表上传成功！','HorizontalAlignment','left','Visible','off',...
    'ForegroundColor','[.153 .227 .373 1]');
handles.text_organization_1_2=text_organization_1_2;
pushbutton_organization_1_3=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.704 0.294 0.172 0.072],'Tag','pushbutton_organization_1_3',...
    'String','操作提示','Visible','on','Interruptible','off','BusyAction','cancel',...
    'Callback',@help_organization_1);
pushbutton_organization_1_4=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.704 0.164 0.172 0.072],'Tag','pushbutton_organization_1_4','FontWeight','bold',...
    'String','<< 上一步','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_1_5=uicontrol(uipanel_organization_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.704 0.034 0.172 0.072],'Tag','pushbutton_organization_1_5','FontWeight','bold',...
    'String','下一步 >>','Visible','on','Interruptible','off','BusyAction','cancel');
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

%% 团队——单因素分析
organization_figure_2=figure('Name','单因素分析——ORGANIZATION','Units','normalized',...
    'position',[(1-0.854)/2 (1-0.81)/2 0.854 0.81],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame6 = get(organization_figure_2,'JavaFrame');
figFrame6.setFigureIcon(newIcon);
uipanel_organization_2=uipanel(organization_figure_2,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.003 0.01 0.992 0.981],'Tag','uipanel_organization_2',...
    'Title','心理非健康态发生率与各因素的关系','Visible','on','FontWeight','bold');
%个人因素
uipanel_organization_2_1=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.006 0.554 0.474 0.422],'Tag','uipanel_organization_2_1',...
    'Title','与个人因素的关系','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_1=uipanel_organization_2_1;
text_organization_2_1=uicontrol(uipanel_organization_2_1,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.022 0.686 0.398 0.075],'Tag','text_organization_2_1',...
    'String','性别——显著性检验','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
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
    'String','性别','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_2=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.832 0.251 0.147 0.117],'Tag','pushbutton_organization_2_2','Enable','off',...
    'String','年龄','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_3=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.657 0.134 0.147 0.117],'Tag','pushbutton_organization_2_3','Enable','off',...
    'String','婚姻状况','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_4=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.834 0.134 0.147 0.117],'Tag','pushbutton_organization_2_4','Enable','off',...
    'String','职业','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_5=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.657 0.017 0.147 0.117],'Tag','pushbutton_organization_2_5','Enable','off',...
    'String','性格类型','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_6=uicontrol(uipanel_organization_2_1,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.834 0.017 0.147 0.117],'Tag','pushbutton_organization_2_6','Enable','off',...
    'String','文化程度','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_5=axes(uipanel_organization_2_1,'Units','normalized','OuterPosition',[0.562 0.401 0.528 0.673],...
    'Position',[0.692 0.527 0.302 0.46],'Tag','axes_organization_2_5','Visible','off');
handles.axes_organization_2_5=axes_organization_2_5;
%家庭因素
uipanel_organization_2_2=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.011 0.12 0.468 0.424],'Tag','uipanel_organization_2_2',...
    'Title','与家庭因素的关系','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_2=uipanel_organization_2_2;
text_organization_2_2=uicontrol(uipanel_organization_2_2,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.021 0.727 0.433 0.071],'Tag','text_organization_2_2',...
    'String','家庭类别——显著性检验','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
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
    'String','家庭类别','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_8=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.828 0.38 0.147 0.129],'Tag','pushbutton_organization_2_8','Enable','off',...
    'String','家庭人口数','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_9=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.659 0.209 0.147 0.129],'Tag','pushbutton_organization_2_9','Enable','off',...
    'String','家庭收入','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_10=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.828 0.209 0.147 0.129],'Tag','pushbutton_organization_2_10','Enable','off',...
    'String','家庭生活','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_11=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.659 0.038 0.147 0.134],'Tag','pushbutton_organization_2_11','Enable','off',...
    'String','贫困户','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_12=uicontrol(uipanel_organization_2_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.828 0.038 0.147 0.129],'Tag','pushbutton_organization_2_12','Enable','off',...
    'String','家庭暴力','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_6=axes(uipanel_organization_2_2,'Units','normalized','OuterPosition',[0.564 0.527 0.525 0.531],...
    'Position',[0.694 0.632 0.3 0.356],'Tag','axes_organization_2_6','Visible','off');
handles.axes_organization_2_6=axes_organization_2_6;
%社会因素
uipanel_organization_2_3=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.484 0.568 0.505 0.41],'Tag','uipanel_organization_2_3',...
    'Title','与社会因素的关系','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_3=uipanel_organization_2_3;
text_organization_2_3=uicontrol(uipanel_organization_2_3,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.022 0.75 0.404 0.078],'Tag','text_organization_2_3',...
    'String','有无知心朋友——显著性检验','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
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
    'String','有无知心朋友','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_14=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.791 0.328 0.173 0.142],'Tag','pushbutton_organization_2_14','Enable','off',...
    'String','生活是否单调','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_15=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.607 0.177 0.173 0.142],'Tag','pushbutton_organization_2_15','Enable','off',...
    'String','是否有人帮助','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_16=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.791 0.177 0.199 0.142],'Tag','pushbutton_organization_2_16','Enable','off',...
    'String','是否借到两千元','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_17=uicontrol(uipanel_organization_2_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.607 0.026 0.173 0.142],'Tag','pushbutton_organization_2_17','Enable','off',...
    'String','参加集体活动','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_7=axes(uipanel_organization_2_3,'Units','normalized','OuterPosition',[0.58 0.509 0.487 0.547],...
    'Position',[0.701 0.616 0.279 0.366],'Tag','axes_organization_2_7','Visible','off');
handles.axes_organization_2_7=axes_organization_2_7;
%行为生活关系
uipanel_organization_2_4=uipanel(uipanel_organization_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.487 0.12 0.502 0.424],'Tag','uipanel_organization_2_4',...
    'Title','与行为生活方式的关系','Visible','on','FontWeight','bold','BorderType','etchedout');
handles.uipanel_organization_2_4=uipanel_organization_2_4;
text_organization_2_4=uicontrol(uipanel_organization_2_4,'Style','text','FontSize',10.0,...
    'Units','normalized','Position',[0.056 0.681 0.391 0.071],'Tag','text_organization_2_4',...
    'String','吸烟情况——显著性检验','ForegroundColor','[.153 .227 .373 1]','HorizontalAlignment','right');
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
    'String','吸烟情况','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_19=uicontrol(uipanel_organization_2_4,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.798 0.291 0.138 0.128],'Tag','pushbutton_organization_2_19','Enable','off',...
    'String','饮酒情况','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_20=uicontrol(uipanel_organization_2_4,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.629 0.07 0.138 0.128],'Tag','pushbutton_organization_2_20','Enable','off',...
    'String','体育锻炼','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_2_21=uicontrol(uipanel_organization_2_4,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.798 0.07 0.174 0.128],'Tag','pushbutton_organization_2_21','Enable','off',...
    'String','是否三餐规律','Visible','on','Interruptible','off','BusyAction','cancel');
axes_organization_2_8=axes(uipanel_organization_2_4,'Units','normalized','OuterPosition',[0.58 0.485 0.489 0.531],...
    'Position',[0.701 0.59 0.28 0.356],'Tag','axes_organization_2_8','Visible','off');
handles.axes_organization_2_8=axes_organization_2_8;

pushbutton_organization_2_22=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.79 0.016 0.072 0.069],'Tag','pushbutton_organization_2_22',...
    'String','<< 上一步','Visible','on','Interruptible','off','BusyAction','cancel',...
    'FontWeight','bold');
pushbutton_organization_2_23=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.887 0.016 0.072 0.069],'Tag','pushbutton_organization_2_23',...
    'String','回到主页','Visible','on','Interruptible','off','BusyAction','cancel',...
    'FontWeight','bold');
pushbutton_organization_2_24=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.688 0.016 0.072 0.069],'Tag','pushbutton_organization_2_24',...
    'String','操作提示','Visible','on','Interruptible','off','BusyAction','cancel',...
    'Callback',@help_organization_2);
pushbutton_organization_2_25=uicontrol(uipanel_organization_2,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.315 0.025 0.062 0.049],'Tag','pushbutton_organization_2_25',...
    'String','搜索','Visible','on','Interruptible','off','BusyAction','cancel');
edit__organization_2_1=uicontrol(uipanel_organization_2,'Style','edit','FontSize',10.0,...
    'Units','normalized','Position',[0.015 0.027 0.285 0.046],'Tag','edit__organization_2_1',...
    'ForegroundColor',[.153 .227 .373 1],'TooltipString','输入姓名，查看个人分析',...
    'String','');
text_organization_2_5=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.395 0.021 0.089 0.041],'Tag','text_organization_2_5',...
    'String','没有找到目标！','ForegroundColor',[1 0 0 1],'Visible','off');
handles.text_organization_2_5=text_organization_2_5;
text_organization_2_6=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.496 0.021 0.131 0.041],'Tag','text_organization_2_6',...
    'String','搜索中. . . . . .','ForegroundColor',[0.929 0.694 0.125 1],'Visible','off',...
    'FontWeight','bold');
handles.text_organization_2_6=text_organization_2_6;
text_organization_2_7=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.496 0.021 0.131 0.041],'Tag','text_organization_2_7',...
    'String','搜索完成！','ForegroundColor',[.153 .227 .373 1],'Visible','off',...
    'FontWeight','bold');
text_organization_2_8=uicontrol(uipanel_organization_2,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.017 0.081 0.19 0.035],'Tag','text_organization_2_8',...
    'String','输入姓名，查看个人分析','ForegroundColor',[1 0.4 0.4 1],'Visible','on',...
    'FontWeight','bold');
handles.text_organization_2_7=text_organization_2_7;
handles.edit__organization_2_1=edit__organization_2_1;
handles.organization_figure_2=organization_figure_2;

%% 搜索结果窗
organization_figure_3=figure('Name','搜索结果','Units','normalized',...
    'position',[(1-0.146)/2 (1-0.296)/2 0.146 0.296],'Resize','off','MenuBar','none','ToolBar','none'...
    ,'NumberTitle','off','WindowStyle','normal','Visible','off');
figFrame7 = get(organization_figure_3,'JavaFrame');
figFrame7.setFigureIcon(newIcon);
text_organization_3_1=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.085 0.837 0.585 0.11],'Tag','text_organization_3_1',...
    'String','搜索结果如下：','ForegroundColor','[.153 .227 .373 1]','Visible','on');
handles.text_organization_3_1=text_organization_3_1;
text_organization_3_2=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
    'Units','normalized','Position',[0.085 0.837 0.76 0.11],'Tag','text_organization_3_2',...
    'String','非健康态人群如下：','ForegroundColor','[.153 .227 .373 1]','Visible','on');
handles.text_organization_3_2=text_organization_3_2;
listbox_organization_3_1=uicontrol(organization_figure_3,'Style','listbox','FontSize',10.5,...
    'Units','normalized','Position',[0.12 0.256 0.755 0.559],'Tag','listbox_organization_3_1',...
    'String','','ForegroundColor','[.153 .227 .373 1]','Value',1.0,'TooltipString','选择一项，点击确认（不止一项，为重名者）');
handles.listbox_organization_3_1=listbox_organization_3_1;
pushbutton_organization_3_1=uicontrol(organization_figure_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.115 0.053 0.33 0.132],'Tag','pushbutton_organization_3_1',...
    'String','取消','Visible','on','Interruptible','off','BusyAction','cancel');
pushbutton_organization_3_2=uicontrol(organization_figure_3,'Style','pushbutton',...
    'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
    'Position',[0.54 0.053 0.33 0.132],'Tag','pushbutton_organization_3_2',...
    'String','确认','Visible','on','Interruptible','off','BusyAction','cancel');
handles.organization_figure_3=organization_figure_3;

%% 设置组件回调函数
set(pushbutton_individual_2_1,'Callback',{@pushbutton_individual_2_1_Callback});        %从个人Part1回到登录界面
set(pushbutton_individual_3_2,'ButtonPushedFcn',{@pushbutton_individual_3_2_ButtonPushedFcn});        %从个人Part2回到登录界面
set(pushbutton_individual_1_1,'Callback',{@pushbutton_individual_1_1_Callback,pushbutton_individual_1_1});    %个人——找到信息表（获取路径）
set(pushbutton_individual_1_2,'Callback',{@pushbutton_individual_1_2_Callback,false,'1'})     %个人——上传数据
set(pushbutton_individual_1_4,'Callback',{@pushbutton_individual_1_4_Callback});    %个人主界面“上一步”
set(pushbutton_individual_1_5,'Callback',{@pushbutton_individual_1_5_Callback});    %个人主界面“下一步”
set(pushbutton_individual_2_2,'Callback',{@pushbutton_individual_2_2_Callback});    %个人体验报告——Part1“上一步”
set(pushbutton_individual_2_3,'Callback',{@pushbutton_individual_2_3_Callback});    %个人体验报告——Part1“下一步”
set(pushbutton_individual_3_1,'ButtonPushedFcn',{@pushbutton_individual_3_1_Callback});    %个人体验报告——Part2“上一步”
set(pushbutton_organization_1_1,'Callback',{@pushbutton_individual_1_1_Callback,pushbutton_organization_1_1});    %团队——找到信息表（获取路径）
set(pushbutton_organization_1_2,'Callback',{@pushbutton_organization_1_2_Callback})     %团队——上传数据
set(pushbutton_organization_1_4,'Callback',{@pushbutton_organization_1_4_Callback});    %团队主界面“上一步”
set(pushbutton_organization_1_5,'Callback',{@pushbutton_organization_1_5_Callback});    %团队主界面“下一步”
set(pushbutton_organization_1_6,'Callback',{@pushbutton_organization_1_6_Callback,...
    listbox_organization_1_1,listbox_organization_1_2});    %团队主界面“右移”
set(pushbutton_organization_1_7,'Callback',{@pushbutton_organization_1_6_Callback,...
    listbox_organization_1_2,listbox_organization_1_1});    %团队主界面“左移”
set(pushbutton_organization_2_22,'Callback',{@pushbutton_organization_2_22_Callback});    %团队——单因素分析“上一步”
set(pushbutton_organization_2_23,'Callback',{@pushbutton_organization_2_23_Callback});    %从团队单因素分析回到登录界面
set(pushbutton_organization_2_1,'Callback',{@pushbutton_organization_2_1_Callback});    %团队——单因素分析（个人因素模块）
set(pushbutton_organization_2_2,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_3,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_4,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_5,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_6,'Callback',{@pushbutton_organization_2_1_Callback});
set(pushbutton_organization_2_7,'Callback',{@pushbutton_organization_2_7_Callback});    %团队——单因素分析（家庭因素模块）
set(pushbutton_organization_2_8,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_9,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_10,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_11,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_12,'Callback',{@pushbutton_organization_2_7_Callback});
set(pushbutton_organization_2_13,'Callback',{@pushbutton_organization_2_13_Callback});    %团队——单因素分析（社会因素模块）
set(pushbutton_organization_2_14,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_15,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_16,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_17,'Callback',{@pushbutton_organization_2_13_Callback});
set(pushbutton_organization_2_18,'Callback',{@pushbutton_organization_2_18_Callback});    %团队——单因素分析（社会因素模块）
set(pushbutton_organization_2_19,'Callback',{@pushbutton_organization_2_18_Callback});
set(pushbutton_organization_2_20,'Callback',{@pushbutton_organization_2_18_Callback});
set(pushbutton_organization_2_21,'Callback',{@pushbutton_organization_2_18_Callback});
set(pushbutton_organization_2_25,'Callback',{@pushbutton_organization_2_25_Callback});     %搜索姓名
set(pushbutton_organization_3_1,'Callback',{@pushbutton_organization_3_1_Callback});     %搜索“取消”
set(pushbutton_organization_3_2,'Callback',{@pushbutton_organization_3_2_Callback});     %搜索“确认”
splash(h,'off');        %关闭启动动画

%% 登陆界面
%% 新建图形并设置相关属性
Hd_login = figure('NumberTitle', 'off', 'Resize','off','Color',[1 0.843 0.769],...
    'Name', '心理健康状况评估系统——LOGIN','tag','Hd_login','Units','normalized',...
    'Position',[(1-0.439)/2 (1-0.525)/2 0.439 0.525],'menubar','none','Visible','on');
%取得Figure的JavaFrame
%修改图标
figFrame = get(Hd_login,'JavaFrame');
figFrame.setFigureIcon(newIcon);
%% 菜单——软件说明
m1=uimenu(Hd_login,'Label','<html><img src="file:./images/about_software2.png"/><span style="font-size:11px;color:green">关于软件</span></html>',...
    'Interruptible','off','BusyAction','cancel','tag','UsageNotice');    %评估等级
%% 添加按钮
pushbutton_login_1=uicontrol(Hd_login,'Style','pushbutton','ForegroundColor',[0.58 0.388 0.388 1],...
    'FontSize',12,'Units','normalized','Position',[0.498 0.079 0.168 0.099],...
    'Tag','pushbutton_login_1','String','个体','Visible','on','Interruptible','off',...
    'BusyAction','cancel');
pushbutton_login_2=uicontrol(Hd_login,'Style','pushbutton','ForegroundColor',[0.58 0.388 0.388 1],...
    'FontSize',12,'Units','normalized','Position',[0.803 0.082 0.168 0.099],...
    'Tag','pushbutton_login_2','String','群体','Visible','on','Interruptible','off',...
    'BusyAction','cancel');         %当Enable='inactive',只有Buttonfcn有效，callback无效
set(pushbutton_login_1,'Callback',{@pushbutton_login_1_Callback});      %登陆界面(个人)
set(pushbutton_login_2,'Callback',{@pushbutton_login_2_Callback});      %登陆界面(团队)
set(m1,'Callback',{@aboutsoftware});        %软件说明
%% 添加背景图片
Hd_axes = axes('units','normalized','position',[0 0 1 1],'tag','Hd_axes');
uistack(Hd_axes,'down')
II=imread('.\images\background.png');
image(II)
%colormap gray
set(Hd_axes,'handlevisibility','off','visible','off');
handles.Hd_login=Hd_login;
end

%主函数

%% function
%% 关于软件
function aboutsoftware(hObject,~)
habout_software=figure('Name','关于软件','Units','normalized','position',[(1-0.425)/2 (1-0.613)/2 0.425 0.613],...
    'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows窗口icon
figFrame_software = get(habout_software,'JavaFrame');
figFrame_software.setFigureIcon(newIcon);
axes_aboutsoftware=axes(habout_software,'Units','normalized','OuterPosition',[-0.117 0.383 1.194 0.666],...
    'Position',[0.009 0.488 0.978 0.488],'Tag','axes_aboutsoftware','Visible','on');
imshow(imread('.\images\background3.png'));
text_aboutsoftware_1=uicontrol(habout_software,'Style','text','FontSize',11.0,'Units','normalized',...
    'Position',[0.017 0.416 0.46 0.053],'Tag','text_aboutsoftware_1','String','中文名称：心理健康评测系统 V1.0',...
    'HorizontalAlignment','left');
text_aboutsoftware_2=uicontrol(habout_software,'Style','text','FontSize',10.0,'Units','normalized',...
    'Position',[0.017 0.35 0.692 0.053],'Tag','text_aboutsoftware_2','String','English Name：Mental Health Assessment System V1.0',...
    'HorizontalAlignment','left');
uipanel_aboutsoftware=uipanel(habout_software,'HighlightColor',[.302 .745 .933 1],'Units','normalized',...
    'Position',[0.009 0.070 0.967 0.26],'Tag','uipanel_aboutsoftware');
text_aboutsoftware_3=uicontrol(uipanel_aboutsoftware,'Style','text','FontSize',10.0,'Units','normalized',...
    'Position',[0.013 0.05 0.975 0.958],'Tag','text_aboutsoftware_3',...
    'String','      本心理健康评测系统是在重庆工商大学赖涵老师的指导下，由本科生王颖开发完成。本评测系统用的心理健康测试量表为“症状自评量表SCL90”，是当前使用最为广泛的精神障碍和心理疾病门诊检查量表，适用对象为成人（16岁以上）。该测试量表可从感觉、情感、思维、 意识、行为直到生活习惯、人际关系、饮食睡眠等多种角度，评定一个人是否有某种心理症状及其严重程度如何。它对有心理症状（即有可能处于心理障碍或心理障碍边缘）的人有良好的区分能力。本测验不仅可以自我测查，也可以进行群体分析，发现个人、家庭、社会、行为生活方式四个方面与心理是否健康的联系。',...
    'HorizontalAlignment','left');
text_aboutsoftware_4=uicontrol(habout_software,'Style','text','FontSize',10.0,'ForegroundColor',[.153 .227 .373 1],...
    'Units','normalized','Position',[0.012 0.002 0.322 0.047],'Tag','text_aboutsoftware_4',...
    'String','版权所有（C）重庆工商大学','HorizontalAlignment','left');
end

%% 个人——上传数据（操作提示）
function help_individual_1(hObject,~)
helpindividual1=figure('Name','个人上传数据——操作提示','Units','normalized',...
    'position',[(1-0.237)/2 (1-0.189)/2 0.237 0.189],'Resize','off','MenuBar','none',...
    'ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows窗口icon
figFrame_individual1 = get(helpindividual1,'JavaFrame');
figFrame_individual1.setFigureIcon(newIcon);
text_helpindividual1_1=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.801 0.616 0.128],...
    'Tag','text_helpindividual1_1','HorizontalAlignment','left','String','1、“上一步”——主界面。');
text_helpindividual1_2=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.619 0.662 0.138],...
    'Tag','text_helpindividual1_2','HorizontalAlignment','left','String','2、“下一步”——个体分析。');
text_helpindividual1_3=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.361 0.925 0.224],...
    'Tag','text_helpindividual1_3','HorizontalAlignment','left','String','3、“上传数据”或"下一步"之前，请先上传心理评测表。');
text_helpindividual1_4=uicontrol(helpindividual1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.006 0.06 0.961 0.246],...
    'Tag','text_helpindividual1_4','HorizontalAlignment','left','String','4、系统导入数据时，默认选择Excel表的sheet1中第一个人的数据。');
end

%% 团队——上传数据（操作提示）
function help_organization_1(hObject,~)
helporganization1=figure('Name','群体上传数据——操作提示','Units','normalized',...
    'position',[(1-0.283)/2 (1-0.301)/2 0.283 0.301],'Resize','off','MenuBar','none',...
    'ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows窗口icon
figFrame_organization1 = get(helporganization1,'JavaFrame');
figFrame_organization1.setFigureIcon(newIcon);
text_helporganization1_1=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.818 0.594 0.117],...
    'Tag','text_helporganization1_1','HorizontalAlignment','left','String','1、“上一步”——主界面。');
text_helporganization1_2=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.649 0.638 0.13],...
    'Tag','text_helporganization1_2','HorizontalAlignment','left','String','2、“下一步”——显著性检验。');
text_helporganization1_3=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.429 0.891 0.182],...
    'Tag','text_helporganization1_3','HorizontalAlignment','left','String','3、“上传数据”或"下一步"之前，请先上传心理评测表和选择即将用于显著性检验的因素。');
text_helporganization1_4=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.273 0.928 0.117],...
    'Tag','text_helporganization1_4','HorizontalAlignment','left','String','4、系统导入数据时，默认选择Excel表的sheet1。');
text_helporganization1_5=uicontrol(helporganization1,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.005 0.065 0.928 0.169],...
    'Tag','text_helporganization1_4','HorizontalAlignment','left','String','5、请确保上传的Excel表中存在10个或10个人以上的数据信息，否则显著性分析没有意义。');
end

%% 团队——单因素分析（操作提示）
function help_organization_2(hObject,~)
helporganization2=figure('Name','单因素分析——操作提示','Units','normalized',...
    'position',[(1-0.408)/2 (1-0.461)/2 0.408 0.461],'Resize','off','MenuBar','none',...
    'ToolBar','none','NumberTitle','off','WindowStyle','normal');
newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows窗口icon
figFrame_organization2 = get(helporganization2,'JavaFrame');
figFrame_organization2.setFigureIcon(newIcon);
text_helporganization2_1=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.763 0.969 0.206],...
    'Tag','text_helporganization2_1','HorizontalAlignment','left',...
    'String','显著性检验就是事先对总体（随机变量）的参数或总体分布形式做出一个假设，然后利用样本信息来判断这个假设（备择假设）是否合理，即判断总体的真实情况与原假设是否有显著性差异。（本评估系统用到的检验方法有：Pearson卡方/连续校正/Fisher精确检验；显著性水平均为0.05）');
text_helporganization2_2=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.548 0.969 0.195],...
    'Tag','text_helporganization2_2','HorizontalAlignment','left',...
    'String','例如：经计算，男生非健康态概率为0.85，女生非健康态概率为0.25，此时若P<0.05，则证明不同性别的人非健康态发生率存在显著性差异，此例即男生非健康态的发生几率比女生高，此结论有95%的可信度；相反，P>=0.05，则不能证明性别因素与心理是否健康有联系。');
text_helporganization2_3=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[1 0 0 1],'Units','normalized','Position',[0.004 0.472 0.183 0.059],...
    'Tag','text_helporganization2_3','HorizontalAlignment','left',...
    'String','【特别提示：】');
text_helporganization2_4=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.379 0.7 0.073],...
    'Tag','text_helporganization2_4','HorizontalAlignment','left',...
    'String','1、“搜索”操作，仅限一个窗口显示个体分析结果。');
text_helporganization2_5=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.263 0.969 0.11],...
    'Tag','text_helporganization2_5','HorizontalAlignment','left',...
    'String','2、表格中的“NaN”，表示相关数据不存在。比如进行Fisher精确检验时，无需用到卡方值X2；当自变量只有一个时，不进行显著性检验。');
text_helporganization2_6=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.011 0.11 0.205 0.065],...
    'Tag','text_helporganization2_6','HorizontalAlignment','left',...
    'String','3、表格上方出现');
axes_helporganization2_1=axes(helporganization2,'Units','normalized','OuterPosition',[0.09 -0.016 0.307 0.363],...
    'Position',[0.221 0.124 0.081 0.127],'Tag','axes_helporganization2_1','Visible','off');
[A,map,transparency]=imread('.\images\ok2.png');
himage=imshow(A);
set(himage,'AlphaData',transparency);
text_helporganization2_7=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[.153 .227 .373 1],'Units','normalized','Position',[0.311 0.113 0.474 0.068],...
    'Tag','text_helporganization2_7','HorizontalAlignment','left',...
    'String','说明这个因素与心理是否健康存在联系。');
text_helporganization2_8=uicontrol(helporganization2,'Style','text','FontSize',10.5,...
    'ForegroundColor',[1 0 1 1],'Units','normalized','Position',[0.011 0.008 0.7 0.073],...
    'Tag','text_helporganization2_8','HorizontalAlignment','left','FontWeight','bold',...
    'String','4、“搜索”框为空时，默认搜索所有非健康态的人群。');
end

%% 从个人Part1回到登录界面
function pushbutton_individual_2_1_Callback(hObject,~)
global handles;
set(handles.individual_figure_2,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% 从个人Part2回到登录界面
function pushbutton_individual_3_2_ButtonPushedFcn(hObject,~)
global handles;
set(handles.individual_figure_3,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% 从团队单因素分析回到登录界面
function pushbutton_organization_2_23_Callback(hObject,~)
global handles;
set(handles.organization_figure_2,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% 登陆选择（下一步）——个人
function pushbutton_login_1_Callback(hObject,~)         %hObject所触发此事件的组件所带信息
global handles;
set(handles.Hd_login,'Visible','off');
    %修改individual_figure_1的内容
    set(handles.text_individual_1_1,'Visible','off');     %上传失败标签
    set(handles.text_individual_1_2,'Visible','off');
    set(handles.edit_individual_1_1,'String','Excel文件的路径（点击左面按钮选择，不支持直接输入）');
    %修改完成
set(handles.individual_figure_1,'Visible','on');
end

%% 登陆选择（下一步）——团队
function pushbutton_login_2_Callback(hObject,~)
global handles;
set(handles.Hd_login,'Visible','off');
    %修改organization_figure_1的内容
    set(handles.text_organization_1_1,'Visible','off');     %上传失败标签
    set(handles.text_organization_1_2,'Visible','off');
    set(handles.edit_organization_1_1,'String','Excel文件的路径（点击左面按钮选择，不支持直接输入）');
    set(handles.listbox_organization_1_2,'String','');
    set(handles.listbox_organization_1_1,'String',{'1-性别','2-年龄','3-婚姻状况','4-职业','5-性格类型','6-文化程度','7-家庭类别','8-家庭人口数','9-家庭收入','10-家庭生活','11-贫困户','12-家庭暴力','13-知心朋友','14-生活单调乏味','15-是否有人帮助','16-是否借到2000元','17-参加集体活动','18-吸烟情况','19-饮酒情况','20-体育锻炼','21-三餐规律'});
    %修改完成
set(handles.organization_figure_1,'Visible','on');
end

%% 找到信息表（获取路径）——个人&团队
function pushbutton_individual_1_1_Callback(hObject,evendata,button)
global handles;
[FileName1,PathName1] = uigetfile({'*.xlsx;*.xls','Excel Files(*.xlsx,*.xls)'}...
    ,'心理评测信息表');
file=strcat(PathName1,FileName1);
tag=get(button,'tag');
if strcmp(tag,'pushbutton_individual_1_1')
    handles.file1=file;         %个人
    set(handles.edit_individual_1_1,'String',file);
else
    handles.file2=file;         %团队
    set(handles.edit_organization_1_1,'String',file);
end
end

%% 上传数据——个人
function pushbutton_individual_1_2_Callback(hObject,~,isSearch,row_index)
global handles;
global basic_information;
if ~isvalid(handles.individual_figure_2)
    newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows窗口icon
    individual_figure_2=figure('Name','个人体检报告——Part1','Units','normalized',...
        'position',[(1-0.928)/2 (1-0.635)/2 0.928 0.635],'Resize','off','MenuBar','none','ToolBar','none'...
        ,'NumberTitle','off','WindowStyle','normal','Visible','off');
    figFrame3 = get(individual_figure_2,'JavaFrame');
    figFrame3.setFigureIcon(newIcon);
    uipanel_individual_2=uipanel(individual_figure_2,'FontSize',11.5,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.003 0.006 0.992 0.982],'Tag','uipanel_individual_2',...
        'Title','90项症状自评量表（SCL-90）测评结果——Part1','Visible','on','FontWeight','bold');
    uipanel_individual_2_1=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.006 0.011 0.204 0.951],'Tag','uipanel_individual_2_1',...
        'Title','基本情况','Visible','on','FontWeight','bold');
    uipanel_individual_2_2=uipanel(uipanel_individual_2,'FontSize',10.5,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.215 0.009 0.781 0.953],'Tag','uipanel_individual_2_2',...
        'Title','测试结果','Visible','on','FontWeight','bold');
    text_individual_2_1=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.076 0.905 0.238 0.046],'Tag','text_individual_2_1',...
        'String','姓名：','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    text_individual_2_2=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.249 0.899 0.71 0.052],'Tag','text_individual_2_2',...
        'String','姓名','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    handles.text_individual_2_2=text_individual_2_2;
    text_individual_2_3=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.075 0.851 0.237 0.046],'Tag','text_individual_2_3',...
        'String','性别：','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    text_individual_2_4=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.257 0.855 0.191 0.042],'Tag','text_individual_2_4',...
        'String','性别','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    handles.text_individual_2_4=text_individual_2_4;
    text_individual_2_5=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.498 0.856 0.195 0.041],'Tag','text_individual_2_5',...
        'String','年龄：','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    text_individual_2_6=uicontrol(uipanel_individual_2_1,'Style','text','FontSize',10.0,...
        'Units','normalized','Position',[0.705 0.858 0.183 0.039],'Tag','text_individual_2_6',...
        'String','年龄','HorizontalAlignment','left','Visible','on',...
        'ForegroundColor',[.153 .227 .373 1]);
    handles.text_individual_2_6=text_individual_2_6;
    uipanel_individual_2_1_1=uipanel(uipanel_individual_2_1,'FontSize',10,'ForegroundColor',[.153 .227 .373 1],...
        'Units','normalized','Position',[0.028 0.019 0.952 0.812],'Tag','uipanel_individual_2_1_1',...
        'Title','温馨提示','Visible','on','FontAngle','italic');
    s=['按全国常模结果，满足以下任一标准，可考虑筛查阳性，需进一步检查：' char(10) '1、总分超过160分；' char(10) '2、阳性项目数超过43项；' char(10) '3、任一因子分超过2分。' char(10) '大于250分则比较严重，需要作医学上的详细检查，很可能要做针对性的心理治疗或在医生的指导下服药。' char(10) '*本评估系统心理健康评价等级分为四大类：健康态、亚健康一态度、亚健康二态、疾病态，各类又依次分成3级、16级、13级、19级，即共51级，级别越高，离健康态越远。'];
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
        'String','回到主页','Visible','on','Interruptible','off','BusyAction','cancel');
    handles.pushbutton_individual_2_1=pushbutton_individual_2_1;
    pushbutton_individual_2_2=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.584 0.058 0.137 0.084],'Tag','pushbutton_individual_2_2','FontWeight','bold',...
        'String','<< 上一步','Visible','on','Interruptible','off','BusyAction','cancel');
    handles.pushbutton_individual_2_2=pushbutton_individual_2_2;
    pushbutton_individual_2_3=uicontrol(uipanel_individual_2_2,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.776 0.058 0.137 0.084],'Tag','pushbutton_individual_2_3','FontWeight','bold',...
        'String','下一步 >>','Visible','on','Interruptible','off','BusyAction','cancel',...
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
    individual_figure_3=uifigure('Name','个人体检报告——Part2','Position',[x y 656 442],...
        'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','Visible','off');
    uipanel_individual_3=uipanel(individual_figure_3,'FontSize',15.33,'ForegroundColor',[.153 .227 .373 1],...
        'Position',[8 7 643 428],'Tag','uipanel_individual_3','Title','90项症状自评量表（SCL-90）测评结果——Part2',...
        'Visible','on','FontWeight','bold');
    label_individual_3_1=uilabel(uipanel_individual_3,'Position',[9 285 260 51],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373]);
    handles.label_individual_3_1=label_individual_3_1;
    label_individual_3_2=uilabel(uipanel_individual_3,'Position',[354 312 52 23],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373],'Text','总分：');
    textarea__individual_3_1=uitextarea(uipanel_individual_3,'HorizontalAlignment','left',...
        'Position',[10 9 523 266],'FontColor',[.153 .227 .373]','FontSize',13.33,'Editable','off');
    handles.textarea__individual_3_1=textarea__individual_3_1;
    pushbutton_individual_3_1=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 11 90 35],'FontWeight','bold','Text','<< 上一步',...
        'ButtonPushedFcn',@pushbutton_individual_3_1_Callback);
    pushbutton_individual_3_2=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 72 90 35],'Text','回到主页','FontWeight','bold');
    handles.pushbutton_individual_3_2=pushbutton_individual_3_2;
    pushbutton_individual_3_3=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[263 285 60 60],'Text','');          %插入图标
    handles.pushbutton_individual_3_3=pushbutton_individual_3_3;
    gauge_individual_3_1=uigauge(uipanel_individual_3,'Limits',[0 450],...       %仪表盘
        'MajorTicks',[90:60:450],'MajorTickLabels',{'90','150','210','270','330','390','450'},...
        'MinorTicks',[90:12:450],'Value',0,'ScaleDirection','clockwise','FontSize',11,...
        'FontColor',[.153 .227 .373],'Position',[412 279 120 120],'ScaleColors',[1 0.84 0;1 0.27 0;0.86 0.08 0.24],...
        'ScaleColorLimits',[180 270;270 360;360 450]);
    handles.gauge_individual_3_1=gauge_individual_3_1;
    handles.individual_figure_3=individual_figure_3;
end

file1=handles.file1;
count1=90+7;    %进度条总长度
step=0;
persistent h1;
if ~isSearch
    set(handles.text_individual_1_1,'Visible','off');
    set(handles.text_individual_1_2,'Visible','off');
    if strcmp(file1,'Excel文件的路径（点击左面按钮选择，不支持直接输入）')||isempty(file1)      %未上传心理测评信息表
        hwarn=warndlg('请先上传心理评测信息表！','警告！','modal');
        newIcon = javax.swing.ImageIcon('.\images\clover.png');
        dlgFrame = get(hwarn,'JavaFrame');
        dlgFrame.setFigureIcon(newIcon);
        return;
    end
    h1=waitbar(0,'心理评测信息表上传中......','WindowStyle','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %设置Window窗口icon
    dlgFrame = get(h1,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    waitbar(step/count1,h1)
end

try
    Ui=zeros(1,10);     %10项中各个项的总分
    temp=zeros(1,2);
    positive_value={temp,temp,temp,temp,temp,temp,temp,temp,temp,temp};      %10项目各个项目的阳性总数和阳性总分
    A=zeros(1,10);      %A,B,C,D四元联系数所包含各个项目的数目和
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
        [19 44 59 60 64 66 89]};           %各项目对应的题目标号
    secondary_weights=zeros(1,10);      %二级权重
    sum_factors=0;        %因子分总分
    level1_weights=[1/12 1/10 1/9 1/13 1/10 1/6 1/7 1/6 1/10 1/7];         %一级权重
    %需要求得的数
    factor_average=zeros(1,10);         %因子均分
    sum=0;      %总分
    average=0;      %总均分
    positive_count=0;     %阳性项目数
    positive_sum=0;         %阳性总分
    positive_average=0;     %阳性症状均分
    if ~isSearch
        step=step+1;           %进度条增长
        waitbar(step/count1,h1)
    end
    %开始计算
    row_index=str2num(row_index);
    [num0,txt0,raw0]=xlsread(file1,1,sprintf('%c%d:%c%c%d',87,row_index+2,68,72,row_index+2));
    for i=1:10      %可考虑强行转换？？？？？？？？？？？？？？？
        for j=1:length(title{i,1})          %length会返回矩阵中的“最长”长度
            for k=1:5
                if eq(raw0{1,title{i,1}(1,j)},k)           %class(raw0{title{1,i}(1,j),k})，可查看数据类型
                    Ui(1,i)=Ui(1,i)+k;
                    if k>=2         %阳性
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
                step=step+1;           %进度条增长
                waitbar(step/count1,h1)
            end
        end
        factor_average(1,i)=Ui(1,i)*level1_weights(1,i);        %因子数
        sum=sum+Ui(1,i);                %总分
        positive_sum=positive_sum+positive_value{1,i}(1,2);         %总阳性分
        positive_count=positive_count+positive_value{1,i}(1,1);         %阳性项目数
    end
    %保留三位小数
    factor_average=round(factor_average*10^3);
    factor_average=factor_average/10^3;
    handles.Ui=Ui;
    handles.factor_average=factor_average;
    average=sum/90;         %总平均分
    %保留三位小数
    average=round(average*10^3);
    average=average/10^3;
    handles.sum=sum;
    handles.average=average;
    positive_average=positive_sum/positive_count;           %阳性平均分
    %保留三位小数
    positive_average=round(positive_average*10^3);
    positive_average=positive_average/10^3;
    handles.positive_count=positive_count;
    handles.positive_average=positive_average;
    for i=1:10              %二级权重
        sum_factors=sum_factors+factor_average(1,i);
    end
    for i=1:10
        secondary_weights(1,i)=factor_average(1,i)/sum_factors;
    end
    if ~isSearch
        step=step+1;           %进度条增长
        waitbar(step/count1,h1)
    end
    value_A=0;
    value_B=0;
    value_C=0;
    value_D=0;
    for i=1:10                  %联系数A
        value_A=value_A+A(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    if ~isSearch
        step=step+1;           %进度条增长
        waitbar(step/count1,h1)
    end
    for i=1:10                  %联系数B
        value_B=value_B+B(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    if ~isSearch
        step=step+1;           %进度条增长
        waitbar(step/count1,h1)
    end
    for i=1:10                  %联系数C
        value_C=value_C+C(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    if ~isSearch
        step=step+1;           %进度条增长
        waitbar(step/count1,h1)
    end
    for i=1:10                  %联系数D
        value_D=value_D+D(1,i)*secondary_weights(1,i)*level1_weights(1,i);
    end
    step=step+1;           %进度条增长
    handles.value_A=value_A;
    handles.value_B=value_B;
    handles.value_C=value_C;
    handles.value_D=value_D;
    if ~isSearch
        step=step+1;           %进度条增长
        waitbar(step/count1,h1)
    end
    %录取基本情况
    [num1,~,raw1]=xlsread(file1,1,sprintf('%c%d:%c%d',65,row_index+2,65,row_index+2));  %姓名
    basic_information.name=raw1;
    [num2,txt2,raw2]=xlsread(file1,1,sprintf('%c%d:%c%d',66,row_index+2,71,row_index+2));  %个体因素（性别、年龄、婚姻状况、职业、性格类型、文化程度）
    basic_information.individual_factors=raw2;
    if ~isSearch
        step=step+1;           %进度条增长
        waitbar(step/count1,h1)
    end
catch
    close(h1);      %关闭进度条                                          %团队里的搜索功能也可能使用此报错操作
    herr=errordlg('心理测评信息表数据格式有误！','错误信息','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %设置Window窗口icon
    dlgFrame = get(herr,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    set(handles.text_individual_1_1,'Visible','on');
    return;
end
if ~isSearch
    close(h1);      %关闭进度条
    set(handles.text_individual_1_2,'Visible','on');
    set(handles.pushbutton_individual_3_2,'Enable','on');
    set(handles.pushbutton_individual_2_2,'Enable','on');
    set(handles.pushbutton_individual_2_1,'Enable','on');
else
    set(handles.text_individual_1_2,'Visible','on');
    set(handles.pushbutton_individual_3_2,'Enable','off');          %此时该界面仅供团队功能里面的搜索用，故屏蔽“上一步按钮”
    set(handles.pushbutton_individual_2_2,'Enable','off');              
    set(handles.pushbutton_individual_2_1,'Enable','off');
end
end

%% 个人主界面“上一步”（登陆界面）
function pushbutton_individual_1_4_Callback(hObject,~)
global handles;
set(handles.individual_figure_1,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% 个人主界面“下一步”(体检报告界面)
function pushbutton_individual_1_5_Callback(hObject,~)
% javaaddpath('ColoredFieldCellRenderer2');       %只能是文件夹或.jar
% import ALG.*;
global handles;
global basic_information;
hasupload=get(handles.text_individual_1_2,'Visible');       %通过查看成功上传标签是否可见判断是否上传成功
if strcmp(hasupload,'off')
    hwarn=warndlg('请先成功上传心理评测信息表！','警告！','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end
set(handles.individual_figure_1,'Visible','off');
%修改individual_figure_2的内容
set(handles.text_individual_2_2,'String',basic_information.name);    %姓名
set(handles.text_individual_2_4,'String',basic_information.individual_factors(1,1));    %性别
set(handles.text_individual_2_6,'String',basic_information.individual_factors(1,2));    %年龄
%设置表格内容
columnName={'得分','均分（因子分）'};
rowName={'躯体性','强迫症状','人际敏感','抑郁','焦虑','敌对','恐怖','偏执','精神病性','其他项目','总分'};      %1*11 cell
Ui=handles.Ui;
factor_average=handles.factor_average;
sum=handles.sum;
average=handles.average;
Ui=[Ui,sum];             %转置合并
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
%修改完成
%画图
axes(handles.axes_individual_2_1);      %将axes_individual_2_1设置为当前坐标区，使坐标区显示在最前面，成为后续图形函数的目标
plot(handles.factor_average,'-o','LineWidth',3);
hline=refline(0,2);       %参考线
hline.Color='r';
hline.LineStyle='--';   %properties(hline)
hold on             %hold on/off不能打分号
legend('均分','分界线');
title('因子分析图');
xlabel('10项因子');
ylabel('各因子均分');
set(gca,'XTickLabel',{'躯体性','强迫症状','人际敏感','抑郁','焦虑','敌对','恐怖','偏执','精神病性','其他项目'},...
    'YLimMode','manual','YLim',[1 5]);
hold off
end

%% 个人体验报告界面——Part1“上一步”（）
function pushbutton_individual_2_2_Callback(hObject,~)
global handles;
set(handles.individual_figure_2,'Visible','off');
set(handles.individual_figure_1,'Visible','on');
end

%% 个人体验报告界面——Part1“下一步”（个人体验报告界面——Part2）
function pushbutton_individual_2_3_Callback(hObject,~)
global handles;
persistent textarea_value;
textarea_value={};
set(handles.individual_figure_2,'Visible','off');
if ~isvalid(handles.individual_figure_3)
    screenposition=get(0,'screensize');
    x=(screenposition(3)-658)/2;
    y=(screenposition(4)-467)/2;
    individual_figure_3=uifigure('Name','个人体检报告——Part2','Position',[x y 656 442],...
        'Resize','off','MenuBar','none','ToolBar','none','NumberTitle','off','Visible','off');
    uipanel_individual_3=uipanel(individual_figure_3,'FontSize',15.33,'ForegroundColor',[.153 .227 .373 1],...
        'Position',[8 7 643 428],'Tag','uipanel_individual_3','Title','90项症状自评量表（SCL-90）测评结果——Part2',...
        'Visible','on','FontWeight','bold');
    label_individual_3_1=uilabel(uipanel_individual_3,'Position',[9 285 260 51],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373]);
    handles.label_individual_3_1=label_individual_3_1;
    label_individual_3_2=uilabel(uipanel_individual_3,'Position',[354 312 52 23],'FontSize',13.33...
        ,'FontColor',[.153 .227 .373],'Text','总分：');
    textarea__individual_3_1=uitextarea(uipanel_individual_3,'HorizontalAlignment','left',...
        'Position',[10 9 523 266],'FontColor',[.153 .227 .373]','FontSize',13.33,'Editable','off');
    handles.textarea__individual_3_1=textarea__individual_3_1;
    pushbutton_individual_3_1=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 11 90 35],'FontWeight','bold','Text','<< 上一步',...
        'ButtonPushedFcn',@pushbutton_individual_3_1_Callback);
    pushbutton_individual_3_2=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[542 72 90 35],'Text','回到主页','FontWeight','bold');
    handles.pushbutton_individual_3_2=pushbutton_individual_3_2;
    pushbutton_individual_3_3=uibutton(uipanel_individual_3,'FontColor',[.153 .227 .373],...
        'FontSize',14.0,'Position',[263 285 60 60],'Text','');          %插入图标
    handles.pushbutton_individual_3_3=pushbutton_individual_3_3;
    gauge_individual_3_1=uigauge(uipanel_individual_3,'Limits',[0 450],...       %仪表盘
        'MajorTicks',[90:60:450],'MajorTickLabels',{'90','150','210','270','330','390','450'},...
        'MinorTicks',[90:12:450],'Value',0,'ScaleDirection','clockwise','FontSize',11,...
        'FontColor',[.153 .227 .373],'Position',[412 279 120 120],'ScaleColors',[1 0.84 0;1 0.27 0;0.86 0.08 0.24],...
        'ScaleColorLimits',[180 270;270 360;360 450]);
    handles.gauge_individual_3_1=gauge_individual_3_1;
    handles.individual_figure_3=individual_figure_3;
end

%判断心理状态
temp=0;     %用于存储a,b,c,d大小关系总和
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
    s='健康态';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\big_smile2.png');
    %      s1=strcat([],'健康态');
elseif temp>=84&&temp<=109
    s='亚健康一态';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\smile2.png');
    %     s=strcat([],'亚健康一态');
elseif temp>=48&&temp<=74
    s='亚健康二态';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\ooooh2.png');
    %     s=strcat([],'亚健康二态');
else
    s='疾病态';
    set(handles.pushbutton_individual_3_3,'Icon','.\images\sad2.png');
    %     s=strcat([],'疾病态');
end

text=sprintf('阳性项目数：%d    阳性症状均分：%.3f\n经综合分析，您目前的心理处于%s\n您在以下方面，症状较明显：',...
    handles.positive_count,handles.positive_average,s);
% textarea_value=cell(10,1);
j=1;
if handles.Ui(1,1)>36
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、躯体化：','主要反映身体不适感，包括心血管、胃肠道、呼吸和其他系统的不适，和头痛、背痛、肌肉酸痛，以及焦虑等躯体不适表现。该分量表的得分在12-60分之间。得分在36分以上，表明个体在身体上有较明显的不适感，并常伴有头痛、肌肉酸痛等症状。得分在24分以下，躯体症状表现不明显。总的说来，得分越高，躯体的不适感越强；得分越低，症状体验越不明显。');
    j=j+1;
end
if handles.Ui(1,2)>30
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、强迫症状：','主要指那些明知没有必要，但又无法摆脱的无意义的思想、冲动和行为，还有一些比较一般的认知障碍的行为征象也在这一因子中反映。该分量表的得分在10-50分之间。得分在30分以上，强迫症状较明显。得分在20分以下，强迫症状不明显。总的说来，得分越高，表明个体越无法摆脱一些无意义的行为、思想和冲动，并可能表现出一些认知障碍的行为征兆。得分越低，表明个体在此种症状上表现越不明显，没有出现强迫行为。');
    j=j+1;
end
if handles.Ui(1,3)>27
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、人际关系敏感：','主要是指某些人际的不自在与自卑感，特别是与其他人相比较时更加突出。在人际交往中的自卑感，心神不安，明显的不自在，以及人际交流中的不良自我暗示，消极的期待等是这方面症状的典型原因。该分量表的得分在9-45分之间。得分在27分以上，表明个体人际关系较为敏感，人际交往中自卑感较强，并伴有行为症状（如坐立不安，退缩等）。得分在18分以下，表明个体在人际关系上较为正常。总的说来，得分越高，个体在人际交往中表现的问题就越多，自卑，自我中心越突出，并且已表现出消极的期待。得分越低，个体在人际关系上越能应付自如，人际交流自信、胸有成竹，并抱有积极的期待。');
    j=j+1;
end
if handles.Ui(1,4)>39
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、抑郁：','抑郁苦闷的情感与心境为代表性症状，还以生活兴趣的减退，动力缺乏，活力丧失等为特征。还表现出失望、悲观以及与抑郁相联系的认知和躯体方面的感受，另外，还包括有关死亡的思想和自杀观念。该分量表的得分在13-65分之间。得分在39分以上，表明个体的抑郁程度较强，生活缺乏足够的兴趣，缺乏运动活力，极端情况下，可能会有想死亡的思想和自杀的观念。得分在26分以下，表明个体抑郁程度较弱，生活态度乐观积极，充满活力，心境愉快。总的说来，得分越高，抑郁程度越明显，得分越低，抑郁程度越不明显。');
    j=j+1;
end
if handles.Ui(1,5)>30
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、焦虑：','一般指那些烦躁，坐立不安，神经过敏，紧张以及由此产生的躯体征象，如震颤等。该分量表的得分在10-50分之间。得分在30分以上，表明个体较易焦虑，易表现出烦躁、不安静和神经过敏，极端时可能导致惊恐发作。得分在20分以下，表明个体不易焦虑，易表现出安定的状态。总的说来，得分越高，焦虑表现越明显。得分越低，越不会导致焦虑。');
    j=j+1;
end
if handles.Ui(1,6)>18
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、敌对：','主要从三方面来反映敌对的表现：思想、感情及行为。其项目包括厌烦的感觉，摔物，争论直到不可控制的脾气暴发等各方面。该分量表的得分在6-30分之间。得分在18分以上，表明个体易表现出敌对的思想、情感和行为。得分在12分以下表明个体容易表现出友好的思想、情感和行为。总的说来，得分越高，个体越容易敌对，好争论，脾气难以控制。得分越低，个体的脾气越温和，待人友好，不喜欢争论、无破坏行为。');
    j=j+1;
end
if handles.Ui(1,7)>21
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、恐怖：','恐惧的对象包括出门旅行，空旷场地，人群或公共场所和交通工具。此外，还有社交恐怖。该分量表的得分在7-35分之间。得分在21分以上，表明个体恐怖症状较为明显，常表现出社交、广场和人群恐惧，得分在14分以下，表明个体的恐怖症状不明显。总的说来，得分越高，个体越容易对一些场所和物体发生恐惧，并伴有明显的躯体症状。得分越低，个体越不易产生恐怖心理，越能正常的交往和活动。');
    j=j+1;
end
if handles.Ui(1,8)>18
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、偏执：','主要指投射性思维，敌对，猜疑，妄想，被动体验和夸大等。该分量表的得分在6-30分之间。得分在18分以上，表明个体的偏执症状明显，较易猜疑和敌对，得分在12分以下，表明个体的偏执症状不明显。总的说来，得分越高，个体越易偏执，表现出投射性的思维和妄想，得分越低，个体思维越不易走极端。');
    j=j+1;
end
if handles.Ui(1,9)>30
    textarea_value{j}=sprintf('%s%s\n%s',num2str(j),'、精神病性：','反映各式各样的急性症状和行为，即限定不严的精神病性过程的症状表现。该分量表的得分在10-50分之间。得分在30分以上，表明个体的精神病性症状较为明显，得分在20分以下，表明个体的精神病性症状不明显。总的说来，得分越高，越多的表现出精神病性症状和行为。得分越低，就越少表现出这些症状和行为。');
    %     j=j+1;
end
 
%判断结束
set(handles.gauge_individual_3_1,'Value',handles.sum); 
if isempty(textarea_value)
    set(handles.textarea__individual_3_1,'Value','没有'); 
else
    set(handles.textarea__individual_3_1,'Value',textarea_value); 
end
set(handles.label_individual_3_1,'Text',text); 
set(handles.individual_figure_3,'Visible','on');
end

%% 个人体验报告——Part2“上一步”(个人体验报告界面——Part1)
function pushbutton_individual_3_1_Callback(hObject,~)
global handles;
set(handles.individual_figure_3,'Visible','off');
set(handles.individual_figure_2,'Visible','on');
end

%% 团队主界面——“右移/左移”
function pushbutton_organization_1_6_Callback(hObject,evendata,list1,list2)
global handles;
output_list=get(list1,'String');        %输出列的列表值（cell）
output_index1=get(list1,'Value');       %输出列被选中行的索引
output_index2=numel(output_list);       %输出列的元素个数

if isempty(output_list)               %表为空，不可移动
    return;
end

output_selected=output_list{output_index1};      %输出列被选中行的值(char)
input_list=get(list2,'String');
input_index=numel(input_list);          %得到元胞数组元素个数
input_list{input_index+1}=output_selected;
if output_index1==output_index2         %移动的是最后一个
    output_list{output_index1}=[];      %删除最后一个值
else
    for i=output_index1:output_index2-1             %从输出列删除移动过后的值
        output_list{i}=output_list{i+1};
    end
    output_list{i+1}=[];
end

count=1;            %最终版output_list（去掉空项目）的元素个数
final_output_list={};
for i=1:output_index2
    if size(output_list{i})~=0
        final_output_list{count}=output_list{i};
        count=count+1;
    end
end
if output_index1==output_index2         %移动的是最后一个
    if output_index2==1
        set(list1,'String',final_output_list,'Value',1);
    else
        set(list1,'String',final_output_list,'Value',output_index2-1);            %更新列表值（更新表后，value会自动在更新前value值的基础上+1）
    end
else
    set(list1,'String',final_output_list);            %更新列表值
end
if input_index==0       %初始化时,value默认为1；若后面list被情空，value=0;
    set(list2,'String',input_list,'Value',1);
else
    set(list2,'String',input_list);
end

tag=get(list1,'tag');       %若list1为左列表，被选择的就为右列表
if strcmp(tag,'listbox_organization_1_1')       %strcmp判断字符串是否相同
    handles.selected_type=input_list;
else
    handles.selected_type=final_output_list;
end
end

%% 团队主界面“上一步”(登陆界面)
function pushbutton_organization_1_4_Callback(hObject,~)
global handles;
set(handles.organization_figure_1,'Visible','off');
set(handles.Hd_login,'Visible','on');
end

%% 上传数据——团队
function pushbutton_organization_1_2_Callback(hObject,~)
global handles;
persistent h1;
h1=waitbar(0,'心理评测信息表上传中......','WindowStyle','modal');
waitbar(0,h1)
set(handles.text_organization_1_1,'Visible','off');
set(handles.text_organization_1_2,'Visible','off');
sum_type=get(handles.listbox_organization_1_2,'String');
if isempty(sum_type)       %没有选择因素
    hwarn=warndlg('请先选择将要进行显著性分析的因素！','警告！','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %设置Window窗口icon
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end
file=handles.file2;
if strcmp(file,'Excel文件的路径（点击左面按钮选择，不支持直接输入）')||isempty(file)      %未上传心理测评信息表
    hwarn=warndlg('请先上传心理评测信息表！','警告！','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end

try
    [~,~,raw]=xlsread(file,1);              %获取excel已有数据的行数
    [row,~]=size(raw);
    count_person=row-2;
    clear raw;             %清除变量raw
    %进度条开始
    count1=3;    %进度条总长度
    step=0;
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %设置Window窗口icon
    dlgFrame = get(h1,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    waitbar(step/count1,h1)
    count_type=numel(handles.selected_type);    %获得自变量数目
    information_sets=zeros(count_person,count_type+2);            %团队人员信息集合
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
        [19 44 59 60 64 66 89]};           %各项目对应的题目标号
    secondary_weights=zeros(1,10);      %二级权重
    level1_weights=[1/12 1/10 1/9 1/13 1/10 1/6 1/7 1/6 1/10 1/7];         %一级权重
    %需要求得的数
    factor_average=zeros(1,10);         %因子均分
    %存储各人信息
    type_index=zeros(1,count_type);          %被选中类型的下标
    %为设置各按钮的UserData(显示各自的uitable值)
    hbuttons=findobj(handles.organization_figure_2,'-depth',3,'-regexp','Tag','pushbutton_organization_2_[1-9]?\d');     %利用正则表达式，属性值找‘obj’
    hbuttons=flipud(hbuttons);          %上下翻转矩阵
    row_name=cell(count_type,6);        %存放各uitable的行title
    step=step+1;                %进度条增长
    waitbar(step/count1,h1)
    for q=1:count_person
        [num0,txt0,raw0]=xlsread(file,1,sprintf('%c%d:%c%c%d',65,q+2,68,72,q+2));
        %数据初始化
        flag=1;         %标志被选类型
        Ui=zeros(1,10);     %10项中各个项的总分
        A=zeros(1,10);      %A,B,C,D四元联系数所包含各个项目的数目和
        B=zeros(1,10);
        C=zeros(1,10);
        D=zeros(1,10);
        sum_factors=0;        %因子分总分
        %开始计算
        for i=1:10      %可考虑强行转换？？？？？？？？？？？？？？？
            for j=1:length(title{i,1})          %length会返回矩阵中的“最长”长度
                for k=1:5
                    if eq(raw0{1,title{i,1}(1,j)+22},k)           %class(raw0{title{1,i}(1,j),k})，可查看数据类型
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
            factor_average(1,i)=Ui(1,i)*level1_weights(1,i);        %因子数
        end
        for i=1:10              %二级权重
            sum_factors=sum_factors+factor_average(1,i);
        end
        for i=1:10
            secondary_weights(1,i)=factor_average(1,i)/sum_factors;
        end
        %计算联系数
        value_A=0;
        value_B=0;
        value_C=0;
        value_D=0;
        for i=1:10                  %联系数A
            value_A=value_A+A(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        for i=1:10                  %联系数B
            value_B=value_B+B(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        for i=1:10                  %联系数C
            value_C=value_C+C(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        for i=1:10                  %联系数D
            value_D=value_D+D(1,i)*secondary_weights(1,i)*level1_weights(1,i);
        end
        %判断是否为亚健康
        temp=0;     %用于存储a,b,c,d大小关系总和
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
        if temp<=109          %存储健康状态
            %             information_sets_duplicate{q,count_type+2}=1;       %（亚健康一态、亚健康二态、疾病态）
            information_sets(q,count_type+2)=1;
        else
            %             information_sets_duplicate{q,count_type+2}=2;
            information_sets(q,count_type+2)=2;
        end
        raw1=raw0(1,1);  %姓名
        information_sets_name{q}=raw1;      %存储姓名
        %         information_sets_duplicate{q,1}=q;
        information_sets(q,1)=q;        %存储个人ID
        raw2=raw0(1,2:7);  %个体因素（性别、年龄、婚姻状况、职业、性格类型、文化程度）
        raw3=raw0(1,8:13);  %家庭因素（家庭类别、家庭人口数、家庭收入、家庭生活、贫困户、家庭暴力）
        raw4=raw0(1,14:18);  %社会因素（知心朋友、生活单调乏味、是否有人帮助、是否借到2000元）
        raw5=raw0(1,19:22);  %行为生活方式（吸烟情况、饮酒情况、体育锻炼、三餐规律）
        while 1              %存储基本情况（被选类型）
            %个体因素
            type_name=handles.selected_type{flag};
            type_num=regexp(type_name,'-','split');      %分割字符串得到因素号码
            if strcmp(type_num{1,1},'1')  %性别
                if q==1
                    type_index(1,flag)=1;           %标记类型被选中
                    set(hbuttons(1,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{1,2};
                if strcmp(raw2{1,1},'男')
                    information_sets(q,flag+1)=1;
                    if ~strcmp(row_name{flag,1},'男')
                        row_name{flag,1}='男';
                    end
                else
                    if ~strcmp(row_name{flag,2},'女')
                        row_name{flag,2}='女';
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
            if strcmp(type_num{1,1},'2')  %年龄
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
            if strcmp(type_num{1,1},'3')  %婚姻状况
                if q==1
                    type_index(1,flag)=3;
                    set(hbuttons(3,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{3,2};
                if eq(raw2{1,3},1)
                    if ~strcmp(row_name{flag,1},'未婚')
                        row_name{flag,1}='未婚';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,3},2)
                    if ~strcmp(row_name{flag,2},'已婚')
                        row_name{flag,2}='已婚';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,3},3)
                    if ~strcmp(row_name{flag,3},'离异')
                        row_name{flag,3}='离异';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'丧偶')
                        row_name{flag,4}='丧偶';
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
            if strcmp(type_num{1,1},'4')  %职业
                if q==1
                    type_index(1,flag)=4;
                    set(hbuttons(4,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{4,2};
                if eq(raw2{1,4},1)
                    if ~strcmp(row_name{flag,1},'农民')
                        row_name{flag,1}='农民';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,4},2)
                    if ~strcmp(row_name{flag,2},'工人')
                        row_name{flag,2}='工人';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,4},3)
                    if ~strcmp(row_name{flag,3},'学生')
                        row_name{flag,3}='学生';
                    end
                    information_sets(q,flag+1)=3;
                elseif eq(raw2{1,4},4)
                    if ~strcmp(row_name{flag,4},'退休')
                        row_name{flag,4}='退休';
                    end
                    information_sets(q,flag+1)=4;
                elseif strcmp(raw2{1,4},'失业')
                    if ~strcmp(row_name{flag,5},'失业')
                        row_name{flag,5}='失业';
                    end
                    information_sets(q,flag+1)=5;
                else
                    if ~strcmp(row_name{flag,6},'其他')
                        row_name{flag,6}='其他';
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
            if strcmp(type_num{1,1},'5')  %性格类型
                if q==1
                    type_index(1,flag)=5;
                    set(hbuttons(5,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{5,2};
                if eq(raw2{1,5},1)
                    if ~strcmp(row_name{flag,1},'内向')
                        row_name{flag,1}='内向';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,5},2)
                    if ~strcmp(row_name{flag,2},'介于内外向之间')
                        row_name{flag,2}='介于内外向之间';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,5},3)
                    if ~strcmp(row_name{flag,3},'不清楚')
                        row_name{flag,3}='不清楚';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'外向')
                        row_name{flag,4}='外向';
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
            if strcmp(type_num{1,1},'6')  %文化程度
                if q==1
                    type_index(1,flag)=6;
                    set(hbuttons(6,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw2{6,2};
                if eq(raw2{1,6},1)
                    if ~strcmp(row_name{flag,1},'文盲')
                        row_name{flag,1}='文盲';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw2{1,6},2)
                    if ~strcmp(row_name{flag,2},'小学')
                        row_name{flag,2}='小学';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw2{1,6},3)
                    if ~strcmp(row_name{flag,3},'初中')
                        row_name{flag,3}='初中';
                    end
                    information_sets(q,flag+1)=3;
                elseif eq(raw2{1,6},4)
                    if ~strcmp(row_name{flag,4},'高中')
                        row_name{flag,4}='高中';
                    end
                    information_sets(q,flag+1)=4;
                else
                    if ~strcmp(row_name{flag,5},'大专以上')
                        row_name{flag,5}='大专以上';
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
            %家庭因素
            if strcmp(type_num{1,1},'7')    %家庭类别
                if q==1
                    type_index(1,flag)=7;
                    set(hbuttons(7,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{1,2};
                if eq(raw3{1,1},1)
                    if ~strcmp(row_name{flag,1},'城镇')
                        row_name{flag,1}='城镇';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw3{1,1},2)
                    if ~strcmp(row_name{flag,2},'农村')
                        row_name{flag,2}='农村';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'混合')
                        row_name{flag,3}='混合';
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
            if strcmp(type_num{1,1},'8')    %家庭人口数
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
            if strcmp(type_num{1,1},'9')    %家庭收入
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
            if strcmp(type_num{1,1},'10')    %家庭生活
                if q==1
                    type_index(1,flag)=10;
                    set(hbuttons(10,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{4,2};
                if eq(raw3{1,4},1)
                    if ~strcmp(row_name{flag,1},'一般')
                        row_name{flag,1}='一般';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw3{1,4},2)
                    if ~strcmp(row_name{flag,2},'不和睦')
                        row_name{flag,2}='不和睦';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'和睦')
                        row_name{flag,3}='和睦';
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
            if strcmp(type_num{1,1},'11')    %是否贫困户
                if q==1
                    type_index(1,flag)=11;
                    set(hbuttons(11,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{5,2};
                if eq(raw3{1,5},1)
                    if ~strcmp(row_name{flag,1},'是')
                        row_name{flag,1}='是';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'否')
                        row_name{flag,2}='否';
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
            if strcmp(type_num{1,1},'12')    %是否家庭暴力
                if q==1
                    type_index(1,flag)=12;
                    set(hbuttons(12,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw3{6,2};
                if eq(raw3{1,6},1)
                    if ~strcmp(row_name{flag,1},'是')
                        row_name{flag,1}='是';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'否')
                        row_name{flag,2}='否';
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
            %社会因素
            if strcmp(type_num{1,1},'13')        %有无知心朋友
                if q==1
                    type_index(1,flag)=13;
                    set(hbuttons(13,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{1,2};
                if eq(raw4{1,1},1)
                    if ~strcmp(row_name{flag,1},'无')
                        row_name{flag,1}='无';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'有')
                        row_name{flag,2}='有';
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
            if strcmp(type_num{1,1},'14')        %生活是否单调无味
                if q==1
                    type_index(1,flag)=14;
                    set(hbuttons(14,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{2,2};
                if eq(raw4{1,2},1)
                    if ~strcmp(row_name{flag,1},'是')
                        row_name{flag,1}='是';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'否')
                        row_name{flag,2}='否';
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
            if strcmp(type_num{1,1},'15')        %遇到困难是否有人帮助
                if q==1
                    type_index(1,flag)=15;
                    set(hbuttons(15,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{3,2};
                if eq(raw4{1,3},1)
                    if ~strcmp(row_name{flag,1},'否')
                        row_name{flag,1}='否';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'是')
                        row_name{flag,2}='是';
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
            if strcmp(type_num{1,1},'16')        %紧急情况下能借到2000元
                if q==1
                    type_index(1,flag)=16;
                    set(hbuttons(16,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{4,2};
                if eq(raw4{1,4},1)
                    if ~strcmp(row_name{flag,1},'否')
                        row_name{flag,1}='否';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'是')
                        row_name{flag,2}='是';
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
            if strcmp(type_num{1,1},'17')        %是否参加社区活动
                if q==1
                    type_index(1,flag)=17;
                    set(hbuttons(17,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw4{5,2};
                if eq(raw4{1,5},1)
                    if ~strcmp(row_name{flag,1},'不参加')
                        row_name{flag,1}='不参加';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw4{1,5},2)
                    if ~strcmp(row_name{flag,2},'偶尔参加')
                        row_name{flag,2}='偶尔参加';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'经常参加')
                        row_name{flag,3}='经常参加';
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
            %行为生活方式
            if strcmp(type_num{1,1},'18')    %吸烟
                if q==1
                    type_index(1,flag)=18;
                    set(hbuttons(18,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{1,2};
                if eq(raw5{1,1},1)
                    if ~strcmp(row_name{flag,1},'已戒烟')
                        row_name{flag,1}='已戒烟';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw5{1,1},2)
                    if ~strcmp(row_name{flag,2},'从来不吸')
                        row_name{flag,2}='从来不吸';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw5{1,1},3)
                    if ~strcmp(row_name{flag,3},'偶尔吸')
                        row_name{flag,3}='偶尔吸';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'经常吸')
                        row_name{flag,4}='经常吸';
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
            if strcmp(type_num{1,1},'19')    %饮酒
                if q==1
                    type_index(1,flag)=19;
                    set(hbuttons(19,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{2,2};
                if eq(raw5{1,2},1)
                    if ~strcmp(row_name{flag,1},'已戒酒')
                        row_name{flag,1}='已戒酒';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw5{1,2},2)
                    if ~strcmp(row_name{flag,2},'从来不饮')
                        row_name{flag,2}='从来不饮';
                    end
                    information_sets(q,flag+1)=2;
                elseif eq(raw5{1,2},3)
                    if ~strcmp(row_name{flag,3},'偶尔饮')
                        row_name{flag,3}='偶尔饮';
                    end
                    information_sets(q,flag+1)=3;
                else
                    if ~strcmp(row_name{flag,4},'经常饮酒')
                        row_name{flag,4}='经常饮酒';
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
            if strcmp(type_num{1,1},'20')    %体育锻炼
                if q==1
                    type_index(1,flag)=20;
                    set(hbuttons(20,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{3,2};
                if eq(raw5{1,3},1)
                    if ~strcmp(row_name{flag,1},'从不')
                        row_name{flag,1}='从不';
                    end
                    information_sets(q,flag+1)=1;
                elseif eq(raw5{1,3},2)
                    if ~strcmp(row_name{flag,2},'偶尔')
                        row_name{flag,2}='偶尔';
                    end
                    information_sets(q,flag+1)=2;
                else
                    if ~strcmp(row_name{flag,3},'经常')
                        row_name{flag,3}='经常';
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
            if strcmp(type_num{1,1},'21')        %三餐是否规律
                if q==1
                    type_index(1,flag)=21;
                    set(hbuttons(21,1),'UserData',flag);
                end
                %                 information_sets_duplicate{q,flag+1}=raw5{4,2};
                if eq(raw5{1,4},1)
                    if ~strcmp(row_name{flag,1},'否')
                        row_name{flag,1}='否';
                    end
                    information_sets(q,flag+1)=1;
                else
                    if ~strcmp(row_name{flag,2},'是')
                        row_name{flag,2}='是';
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
    step=step+1;                %进度条增长
    waitbar(step/count1,h1)
    
    %--------------------------------------------------------------------
%     herr=errordlg('2！','错误信息','modal');
    
    handles.type_index=type_index;
    handles.information_sets=information_sets;
    handles.information_sets_name=information_sets_name;
    %预先存储各表格的行标题（被选择的）
    real_row_name={};           %此cell仅有一列
    for i=1:count_type
        temp=1;
        for j=1:6
            if ~isempty(row_name{i,j})   %判断元素是否为空矩阵
                real_row_name{i,1}{1,temp}=row_name{i,j};       %cell会根据输入的数据调整大小
                temp=temp+1;
            end
        end
    end
    
    %--------------------------------------------------------------------
%     herr=errordlg('2.5！','错误信息','modal');
    
    %装备完毕
    handles.real_row_name=real_row_name;            %行title
    handles.columnName={'非健康态','健康态','合计',...
        '<html><center>非健康态<br />发生率</center></html>','X2','P'};      %列title
    handles.count_person=count_person;            %参与人数
    step=step+1;                %进度条增长
    waitbar(step/count1,h1)
    
    %--------------------------------------------------------------------
%     herr=errordlg('3！','错误信息','modal');
    
catch
    close(h1);      %关闭进度条
    herr=errordlg('心理测评信息表数据格式有误！','错误信息','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');     %设置Window窗口icon
    dlgFrame = get(herr,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    set(handles.text_organization_1_1,'Visible','on');
    return;
end
close(h1);      %关闭进度条
set(handles.text_organization_1_2,'Visible','on');
end

%% 团队主界面“下一步”(单因素分析)
function pushbutton_organization_1_5_Callback(hObject,~)
global handles;
hasupload=get(handles.text_organization_1_2,'Visible');       %通过查看成功上传标签是否可见判断是否上传成功
if strcmp(hasupload,'off')
    hwarn=warndlg('请先成功上传心理评测信息表！','警告！','modal');
    newIcon = javax.swing.ImageIcon('.\images\clover.png');
    dlgFrame = get(hwarn,'JavaFrame');
    dlgFrame.setFigureIcon(newIcon);
    return;
end
set(handles.organization_figure_1,'Visible','off');     %初始化界面
set(handles.edit__organization_2_1,'String','');
set(handles.text_organization_2_5,'Visible','off');
set(handles.text_organization_2_6,'Visible','off');
set(handles.text_organization_2_7,'Visible','off');
%激活被选中了的类型按钮
hbuttons=findobj(handles.organization_figure_2,'-depth',3,'-regexp','Tag','pushbutton_organization_2_[1-9]?\d');     %利用正则表达式，属性值找‘obj’
hbuttons=flipud(hbuttons);          %上下翻转矩阵
for i=1:length(handles.type_index)
    set(hbuttons(handles.type_index(1,i),1),'Enable','on');
end
count_type=numel(handles.selected_type);    %获得自变量数目
data_uitable=cell(count_type,1);        %存储即将呈现的uitable数据
[row col]=size(handles.information_sets);
%逐一进行显著性检验
y=handles.information_sets(1:row,col);          %因变量
for i=2:count_type+1
    x=handles.information_sets(1:row,i);        %自变量
    if handles.count_person>=40      %进行卡方检验的条件(包括了连续校正卡方检验)
        [table, chi2, p, h,isfisher_buff]=crosstab_duplicate(x,y);
        [row2 col2]=size(table);
        if isfisher_buff||row2>2        %isfisher_buff为真，即样本数>=40,但所得P约等于0.05；或者有期望计数<1；或者为R*2列表；用fisher精确检验
            chi2=NaN;
            chi2_matrix=repmat(NaN,row2,1);     %int8/16/32 强制转换
            chi2_matrix(1,1)=chi2;
            count_buff=sum(table,2);       %各自变量的合计(行和)
            probability=table(1:row2,1)./count_buff;        %各自变量导致非健康态的概率
            if row2>1               %因变量>1
                [p,h]=myfisher_duplicate(table);
                p_matrix=repmat(NaN,row2,1);
                p_matrix(1,1)=p;
                table=[table count_buff probability chi2_matrix p_matrix];   %各矩阵合并成uitable值
                data_uitable{i-1,1}=num2cell(table);
            else
                p=NaN;
                p_matrix=repmat(NaN,row2,1);
                p_matrix(1,1)=p;
                table=[table count_buff probability chi2_matrix p_matrix];   %各矩阵合并成uitable值
                data_uitable{i-1,1}=num2cell(table);
            end
        else
            chi2_matrix=repmat(NaN,row2,1);     %int8/16/32 强制转换
            chi2_matrix(1,1)=chi2;
            p_matrix=repmat(NaN,row2,1);
            p_matrix(1,1)=p;
            count_buff=sum(table,2);       %各自变量的合计(行和)
            probability=table(1:row2,1)./count_buff;        %各自变量导致非健康态的概率
            table=[table count_buff probability chi2_matrix p_matrix];   %各矩阵合并成uitable值
            data_uitable{i-1,1}=num2cell(table);
        end
    else      %样本数<40(fisher精确检验)
        [table]=crosstab_duplicate(x,y);
        [row2 col2]=size(table);
        chi2=NaN;
        chi2_matrix=repmat(NaN,row2,1);     %int8/16/32 强制转换
        chi2_matrix(1,1)=chi2;
        count_buff=sum(table,2);       %各自变量的合计(行和)
        probability=table(1:row2,1)./count_buff;        %各自变量导致非健康态的概率
        if row2>1               %因变量>1
            [p,h]=myfisher_duplicate(table);
            p_matrix=repmat(NaN,row2,1);
            p_matrix(1,1)=p;
            table=[table count_buff probability chi2_matrix p_matrix];   %各矩阵合并成uitable值
            data_uitable{i-1,1}=num2cell(table);
        else
            p=NaN;
            p_matrix=repmat(NaN,row2,1);
            p_matrix(1,1)=p;
            table=[table count_buff probability chi2_matrix p_matrix];   %各矩阵合并成uitable值
            data_uitable{i-1,1}=num2cell(table);
        end
    end
end

hasdisplay_uitable1=false;
hasdisplay_uitable2=false;
hasdisplay_uitable3=false;
hasdisplay_uitable4=false;
%单因素分析界面初始化数据表格显示
% buff=zeros(1,1);
for i=1:21          %21各切换按钮
    index=get(hbuttons(i,1),'UserData');
    if strcmp(get(hbuttons(i,1),'Enable'),'on')
        s=get(hbuttons(i,1),'String');      %设置表标题
        s=strcat(s,'——显著性检验');
        if i>=1&&i<=6           %个人因素uitable
            if hasdisplay_uitable1              %已经有数据显示
                continue;
            end
            set(handles.text_organization_2_1,'String',s);
            pre_save=data_uitable{index}{1,6};          %预先保存，防止单元格字体变蓝后，数据格式发生变化，无法进行下列if的判断
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05          %显示图标，说明显著性明显
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_1);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax1=handles.axes_organization_2_5;        %水平条形图（概率）
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %上下翻转，适应坐标
                b1=barh(ax1,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax1,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b1=b1;
            end
            set(handles.uitable_organization_2_1,'RowName',handles.real_row_name{index},...     %设置表格
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %恢复数据格式
            hasdisplay_uitable1=true;
        elseif i>6&&i<=12           %家庭因素uitable
            if hasdisplay_uitable2              %已经有数据显示
                continue;
            end
            set(handles.text_organization_2_2,'String',s);
            pre_save=data_uitable{index}{1,6};          %预先保存，防止单元格字体变蓝后，数据格式发生变化，无法进行下列if的判断
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05           %显示图标，说明显著性明显
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_2);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax2=handles.axes_organization_2_6;        %水平条形图（概率）
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %上下翻转，适应坐标
                b2=barh(ax2,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax2,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b2=b2;
            end
            set(handles.uitable_organization_2_2,'RowName',handles.real_row_name{index},...     %设置表格
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %恢复数据格式
            hasdisplay_uitable2=true;
        elseif i>12&&i<=17          %社会因素uitable
            if hasdisplay_uitable3              %已经有数据显示
                continue;
            end
            set(handles.text_organization_2_3,'String',s);
            pre_save=data_uitable{index}{1,6};          %预先保存，防止单元格字体变蓝后，数据格式发生变化，无法进行下列if的判断
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05       %显示图标，说明显著性明显
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_3);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax3=handles.axes_organization_2_7;        %水平条形图（概率）
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %上下翻转，适应坐标
                b3=barh(ax3,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax3,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b3=b3;
            end
            set(handles.uitable_organization_2_3,'RowName',handles.real_row_name{index},...     %设置表格
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %恢复数据格式
            hasdisplay_uitable3=true;
        else           %行为生活方式uitable
            if hasdisplay_uitable4              %已经有数据显示
                continue;
            end
            set(handles.text_organization_2_4,'String',s);
            pre_save=data_uitable{index}{1,6};          %预先保存，防止单元格字体变蓝后，数据格式发生变化，无法进行下列if的判断
            if ~isnan(data_uitable{index}{1,6})&&data_uitable{index}{1,6}<0.05           %显示图标，说明显著性明显
                data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(data_uitable{index}{1,6}));
                axes(handles.axes_organization_2_4);
                [A,map,transparency]=imread('.\images\ok2.png');
                himage=imshow(A);
                set(himage,'AlphaData',transparency);
                ax4=handles.axes_organization_2_8;        %水平条形图（概率）
                %                 x=categorical(handles.real_row_name{index});
                y=cell2mat(data_uitable{index}(:,4));       %上下翻转，适应坐标
                b4=barh(ax4,y,0.5,'FaceColor',[0 0.5 0.5]);
                hold on
                set(ax4,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
                hold off
                handles.b4=b4;
            end
            set(handles.uitable_organization_2_4,'RowName',handles.real_row_name{index},...     %设置表格
                'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
                'Data',data_uitable{index},'Enable','inactive');
            data_uitable{index}{1,6}=pre_save;          %恢复数据格式
            hasdisplay_uitable4=true;
        end
    end
end
%显示操作完成
handles.data_uitable=data_uitable;
% save('./interface_2_data/data_uitable.mat','data_uitable');
set(handles.organization_figure_2,'Visible','on');
end

%% 团队——单因素分析“上一步”（团队主界面）
function pushbutton_organization_2_22_Callback(hObject,~)
global handles;
hbuttons=findobj(handles.organization_figure_2,'-depth',3,'-regexp','Tag','pushbutton_organization_2_[1-9]?\d');     %利用正则表达式，属性值找‘obj’
hbuttons=flipud(hbuttons);          %上下翻转矩阵
%重新关闭按钮
for i=1:length(handles.type_index)
    set(hbuttons(handles.type_index(1,i),1),'Enable','off');
end
set(handles.organization_figure_2,'Visible','off');
set(handles.organization_figure_1,'Visible','on');
end

%% 团队——单因素分析（个人因素模块）
function pushbutton_organization_2_1_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %设置表标题
s=strcat(s,'——显著性检验');
set(handles.text_organization_2_1,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %预先保存，防止单元格字体变红后，数据格式发生变化，无法进行下列if的判断
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_1);
    [A,map,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax1=handles.axes_organization_2_5;        %水平条形图（概率）
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %上下翻转，适应坐标
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
    if isfield(handles,'b1')                %“隐藏”axes2
        delete(handles.b1);             %删除对象
        set(handles.axes_organization_2_5,'Visible','off');
    end
end
set(handles.uitable_organization_2_1,'RowName',handles.real_row_name{index},...     %设置表格
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %恢复数据格式
end

%% 团队——单因素分析（家庭因素模块）
function pushbutton_organization_2_7_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %设置表标题
s=strcat(s,'——显著性检验');
set(handles.text_organization_2_2,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %预先保存，防止单元格字体变红后，数据格式发生变化，无法进行下列if的判断
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_2);
    [A,map,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax2=handles.axes_organization_2_6;        %水平条形图（概率）
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %上下翻转，适应坐标
    b2=barh(ax2,y,0.5,'FaceColor',[0 0.5 0.5]);
    hold on
    set(ax2,'YTickLabelMode','manual','YTickLabel',handles.real_row_name{index});
    hold off
    handles.b2=b2;
else
    axes(handles.axes_organization_2_2);        %隐藏axes1
    [A,map,transparency]=imread('.\images\transparency.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    if isfield(handles,'b2')                %“隐藏”axes2
        delete(handles.b2);             %删除对象
        set(handles.axes_organization_2_6,'Visible','off');
    end
end
set(handles.uitable_organization_2_2,'RowName',handles.real_row_name{index},...     %设置表格
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %恢复数据格式
end

%% 团队——单因素分析（社会因素模块）
function pushbutton_organization_2_13_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %设置表标题
s=strcat(s,'——显著性检验');
set(handles.text_organization_2_3,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %预先保存，防止单元格字体变红后，数据格式发生变化，无法进行下列if的判断
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_3);
    [A,map,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax3=handles.axes_organization_2_7;        %水平条形图（概率）
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %上下翻转，适应坐标
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
    if isfield(handles,'b3')                %“隐藏”axes2
        delete(handles.b3);             %删除对象
        set(handles.axes_organization_2_7,'Visible','off');
    end
end
set(handles.uitable_organization_2_3,'RowName',handles.real_row_name{index},...     %设置表格
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %恢复数据格式
end

%% 团队——单因素分析（生活行为因素模块）
function pushbutton_organization_2_18_Callback(hObject,~)
global handles;
index=get(hObject,'UserData');
s=get(hObject,'String');      %设置表标题
s=strcat(s,'——显著性检验');
set(handles.text_organization_2_4,'String',s);
pre_save=handles.data_uitable{index}{1,6};          %预先保存，防止单元格字体变红后，数据格式发生变化，无法进行下列if的判断
if ~isnan(handles.data_uitable{index}{1,6})&&handles.data_uitable{index}{1,6}<0.05
    handles.data_uitable{index}{1,6}=strcat(['<html><body text="#66CCCC">'],num2str(handles.data_uitable{index}{1,6}));
    axes(handles.axes_organization_2_4);
    [A,~,transparency]=imread('.\images\ok2.png');
    himage=imshow(A);
    set(himage,'AlphaData',transparency);
    ax4=handles.axes_organization_2_8;        %水平条形图（概率）
    %     x=categorical(handles.real_row_name{index});
    y=cell2mat(handles.data_uitable{index}(:,4));       %上下翻转，适应坐标
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
    if isfield(handles,'b4')                %“隐藏”axes2
        delete(handles.b4);             %删除对象
        set(handles.axes_organization_2_8,'Visible','off');
    end
end
set(handles.uitable_organization_2_4,'RowName',handles.real_row_name{index},...     %设置表格
    'FontWeight','bold','FontSize',12.0,'ColumnName',handles.columnName,...
    'Data',handles.data_uitable{index},'Enable','inactive');
handles.data_uitable{index}{1,6}=pre_save;          %恢复数据格式
end

%% 团队——搜索姓名（个人分析）
function pushbutton_organization_2_25_Callback(hObject,~)
global handles;
handles.file1=handles.file2;        %设置excel表路径
count_type=numel(handles.selected_type);    %获得自变量数目
%初始化
set(handles.text_organization_2_5,'Visible','off');              %“失败”标签
set(handles.text_organization_2_7,'Visible','off');              %“成功”标签
set(handles.text_organization_2_6,'Visible','on');              %“搜索中”标签
if ~isvalid(handles.organization_figure_3)
    newIcon = javax.swing.ImageIcon('.\images\clover.png');         %Windows窗口icon
    organization_figure_3=figure('Name','搜索结果','Units','normalized',...
        'position',[(1-0.146)/2 (1-0.296)/2 0.146 0.296],'Resize','off','MenuBar','none','ToolBar','none'...
        ,'NumberTitle','off','WindowStyle','normal','Visible','off');
    figFrame7 = get(organization_figure_3,'JavaFrame');
    figFrame7.setFigureIcon(newIcon);
    text_organization_3_1=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
        'Units','normalized','Position',[0.085 0.837 0.585 0.11],'Tag','text_organization_3_1',...
        'String','搜索结果如下：','ForegroundColor','[.153 .227 .373 1]','Visible','on');
    handles.text_organization_3_1=text_organization_3_1;
    text_organization_3_2=uicontrol(organization_figure_3,'Style','text','FontSize',10.5,...
        'Units','normalized','Position',[0.085 0.837 0.76 0.11],'Tag','text_organization_3_2',...
        'String','非健康态人群如下：','ForegroundColor','[.153 .227 .373 1]','Visible','on');
    handles.text_organization_3_2=text_organization_3_2;
    listbox_organization_3_1=uicontrol(organization_figure_3,'Style','listbox','FontSize',10.5,...
        'Units','normalized','Position',[0.12 0.256 0.755 0.559],'Tag','listbox_organization_3_1',...
        'String','','ForegroundColor','[.153 .227 .373 1]','Value',1.0,'TooltipString','选择一项，点击确认（不止一项，为重名者）');
    handles.listbox_organization_3_1=listbox_organization_3_1;
    pushbutton_organization_3_1=uicontrol(organization_figure_3,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.115 0.053 0.33 0.132],'Tag','pushbutton_organization_3_1',...
        'String','取消','Visible','on','Interruptible','off','BusyAction','cancel',...
        'Callback',@pushbutton_organization_3_1_Callback);
    pushbutton_organization_3_2=uicontrol(organization_figure_3,'Style','pushbutton',...
        'ForegroundColor',[.153 .227 .373 1],'FontSize',10.5,'Units','normalized',...
        'Position',[0.54 0.053 0.33 0.132],'Tag','pushbutton_organization_3_2',...
        'String','确认','Visible','on','Interruptible','off','BusyAction','cancel',...
        'Callback',@pushbutton_organization_3_2_Callback);
    handles.organization_figure_3=organization_figure_3;
end
set(handles.organization_figure_3,'Visible','off');
input_name=get(handles.edit__organization_2_1,'String');
search_name={};                 %可能有重名
isfind=false;
temp=1;
if isempty(input_name)        %edit字符串为空（查找所有非健康态）
    set(handles.text_organization_3_2,'Visible','on');
    set(handles.text_organization_3_1,'Visible','off');
    for i=1:handles.count_person
        if eq(handles.information_sets(i,count_type+2),1)
            s=sprintf('%d、%s',handles.information_sets(i,1),char(handles.information_sets_name{i}));
            search_name{temp}=s;        %标志着对应的sheet标志
            temp=temp+1;
            isfind=true;
        end
    end
else                    %查找特定人
    set(handles.text_organization_3_2,'Visible','off');
    set(handles.text_organization_3_1,'Visible','on');
    %找到名字对应的sheet下标
    for i=1:handles.count_person
        if strcmp(input_name,handles.information_sets_name{i})
            s=sprintf('%d、%s',handles.information_sets(i,1),char(handles.information_sets_name{i}));
            search_name{temp}=s;        %标志着对应的sheet标志
            temp=temp+1;
            isfind=true;
        end
    end
end
%查找完毕
if ~isfind          %没有找到目标
    set(handles.text_organization_2_6,'Visible','off');
    set(handles.text_organization_2_5,'Visible','on');      %“搜索失败”标签
else        %查找成功
    set(handles.text_organization_2_6,'Visible','off');
    set(handles.text_organization_2_7,'Visible','on');      %“搜索成功”标签
    set(handles.organization_figure_3,'Visible','on');
    set(handles.listbox_organization_3_1,'String',search_name,'Value',1.0);
end
end

%% 搜索“确认”
function pushbutton_organization_3_2_Callback(hObject,~)
global handles;
handles.file1=handles.file2;        %设置excel表路径
list_string=get(handles.listbox_organization_3_1,'String');
list_value=get(handles.listbox_organization_3_1,'Value');       %输出列被选中行的索引
list_selected=list_string{list_value};
sheet_index=regexp(list_selected,'、','split');      %分割字符串得到此人对应的sheet索引
pushbutton_individual_1_2_Callback(NaN,NaN,true,sheet_index{1,1});       %
pushbutton_individual_1_5_Callback(NaN,NaN);

end

%% 搜索“取消”
function pushbutton_organization_3_1_Callback(hObject,~)
global handles;
set(handles.organization_figure_3,'Visible','off');
end















