function varargout = task(varargin)
% TASK MATLAB code for task.fig
%      TASK, by itself, creates a new TASK or raises the existing
%      singleton*.
%
%      H = TASK returns the handle to a new TASK or the handle to
%      the existing singleton*.
%
%      TASK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TASK.M with the given input arguments.
%
%      TASK('Property','Value',...) creates a new TASK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before task_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to task_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help task

% Last Modified by GUIDE v2.5 24-Dec-2022 21:49:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @task_OpeningFcn, ...
                   'gui_OutputFcn',  @task_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before task is made visible.
function task_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to task (see VARARGIN)

% Choose default command line output for task
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes task wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = task_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in operatorList.
function operatorList_Callback(hObject, eventdata, handles)
% hObject    handle to operatorList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns operatorList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from operatorList


% --- Executes during object creation, after setting all properties.
function operatorList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operatorList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operand1_Callback(hObject, eventdata, handles)
% hObject    handle to operand1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operand1 as text
%        str2double(get(hObject,'String')) returns contents of operand1 as a double


% --- Executes during object creation, after setting all properties.
function operand1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operand1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operand2_Callback(hObject, eventdata, handles)
% hObject    handle to operand2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operand2 as text
%        str2double(get(hObject,'String')) returns contents of operand2 as a double


% --- Executes during object creation, after setting all properties.
function operand2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operand2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in equalButton.
function equalButton_Callback(hObject, eventdata, handles)
% hObject    handle to equalButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
op1 = str2double(char(get(handles.operand1,'String')));
o1 = get(handles.operand1,'String');
op2 = str2double(char(get(handles.operand2,'String')));
o2 = get(handles.operand2,'String');
% oper = char(get(handles.operatorList,'String'));
idx = get(handles.operatorList,'Value');
items = get(handles.operatorList,'String');
selectedItem = items{idx};
if isempty(o1) || isempty(o2)
    set(handles.error,'String','Please Enter All Required Fields');
    set( handles.error,'ForegroundColor','red');
    set(handles.result,'String','');
elseif isnan(op1) || isnan(op2)
    set(handles.error,'String','Please Enter Numerical Values');
    set( handles.error,'ForegroundColor','red'); 
    set(handles.result,'String','');
else
    set(handles.error,'String','');
    if(selectedItem == '-')
        set(handles.error,'String','');
        res = op1-op2;
        set(handles.result,'String',num2str(res));
        set(handles.operator,'String',num2str(selectedItem));
    end

    if(selectedItem == '*')
        set(handles.error,'String','');
        res = op1*op2;
        set(handles.result,'String',num2str(res));
        set(handles.operator,'String',num2str(selectedItem));
    end

    if(selectedItem == '/')
        set(handles.operator,'String',num2str(selectedItem));
        if(op2 == 0)
            set(handles.error,'String','Can not divide by Zero');
            set( handles.error,'ForegroundColor','red');
            set(handles.result,'String','');
        else
            set(handles.error,'String','');
            res = op1/op2; 
            set(handles.result,'String',num2str(res));
        end
    end

    if(selectedItem == '+')
        set(handles.error,'String','');
        res = op1+op2; 
        set(handles.result,'String',num2str(res));
        set(handles.operator,'String',num2str(selectedItem));
    end
end


    


% --- Executes during object creation, after setting all properties.
function operator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function x_axis_Callback(hObject, eventdata, handles)
% hObject    handle to x_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_axis as text
%        str2double(get(hObject,'String')) returns contents of x_axis as a double


% --- Executes during object creation, after setting all properties.
function x_axis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_axis_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_axis as text
%        str2double(get(hObject,'String')) returns contents of y_axis as a double


% --- Executes during object creation, after setting all properties.
function y_axis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_axis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result1_Callback(hObject, eventdata, handles)
% hObject    handle to result1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result1 as text
%        str2double(get(hObject,'String')) returns contents of result1 as a double


% --- Executes during object creation, after setting all properties.
function result1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.error1,'string','');
axes(handles.axes1);
cla; 

% --- Executes on button press in Enter.
function Enter_Callback(hObject, eventdata, handles)
% hObject    handle to Enter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% A=get(handles.x_axis,'string');
% B=get(handles.y_axis,'string');
% res=get(handles.equ_result,'string');
% FUN=get(handles.equation,'string');
% 
% if ((handles.x_axis.Value == 1) && (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
%     if isequal(A,'') 
%         set(handles.funerorr,'string','Missing X Axis');
%     else
%         A = str2double(regexp(A,'\d*[\.]?\d*','match'))
%         axes(handles.axes1);
%         plot(A,'-');
%     end
% elseif ((handles.y_axis.Value == 1) && (handles.x_axis.Value == 0)  && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
%     if isequal(B,'') 
%         set(handles.funerorr,'string','Missing Y Axis');
%     else
%         B = str2double(regexp(B,'\d*[\.]?\d*','match'))
%         axes(handles.axes1);
%         plot(B,'-');
%     end
% elseif ((handles.X_Y_Axis.Value == 1) && (handles.x_axis.Value == 0) && (handles.y_axis.Value == 0) && (handles.Equation.Value == 0) )
%     if isequal(B,'') 
%         set(handles.funerorr,'string','Missing Y Axis');
%     elseif  isequal(A,'')
%         set(handles.funerorr,'string','Missing X Axis');
%     else
%         A = str2double(regexp(A,'\d*[\.]?\d*','match'))
%         B = str2double(regexp(B,'\d*[\.]?\d*','match'))
%         axes(handles.axes1);
%         plot(A,'-');
%         hold on;
%         plot(B,'-');
%     end
% elseif ((handles.Equation.Value == 1) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0))
%    
%         x=0:0.1:10;
%         axes(handles.axes1);
%         plot(eval(FUN),'-');
%        
% elseif ((handles.Resultant.Value == 1) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
%         if isequal(res,'') 
%             set(handles.funerorr,'string','There Is No Result TO Plot');
%         else
%             res=str2num(res);
%             axes(handles.axes1);
%             plot(res,'-');
%         end
%        
% elseif ((handles.Resultant.Value == 1) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0))
%         if isequal(res,'') 
%             set(handles.funerorr,'string','There Is No Result TO Plot');
%         else
%             res=str2num(res);
%             axes(handles.axes1);
%             plot(res,'-');
%         end
%        
% elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 1))
%             if  isequal(A,'')
%                 set(handles.funerorr,'string','Missing X Axis');
%             else
%                  A = str2double(regexp(A,'\d*[\.]?\d*','match'))
%                  x=A;
%                  axes(handles.axes1);
%                  plot(eval(FUN),'-');
%                  hold on;
%                  plot(A,'-');
%             end
%         
%        
% elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 1))
%             if  isequal(B,'')
%                 set(handles.funerorr,'string','Missing B Axis');
%             else
%                  B = str2double(regexp(B,'\d*[\.]?\d*','match'))
%                  x=B;
%                  axes(handles.axes1);
%                  plot(eval(FUN),'-');
%                  hold on;
%                  plot(B,'-');
%             end
%         
%        
% elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 1)&& (handles.Equation.Value == 1))
%             if  isequal(A,'')
%                 set(handles.funerorr,'string','Missing X Axis');
%             elseif  isequal(B,'')
%                 set(handles.funerorr,'string','Missing X Axis');
%             else
%                  A = str2double(regexp(A,'\d*[\.]?\d*','match'));
%                  B = str2double(regexp(B,'\d*[\.]?\d*','match'));
%                  x=A;
%                  y=B;
%                  axes(handles.axes1);
%                  plot(eval(FUN),'-');
%             end
% elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0)&& (handles.Sine.Value == 1))
%                 A = str2double(regexp(A,'\d*[\.]?\d*','match'));
%                 n=[-10:10];
%                 f=50;
%                 fs=1000
%                 x=sin(2*pi*(f/fs)*n);
%                 disp(f);
%                 axes(handles.axes1);
%                 plot(n,x)
%           
% elseif ((handles.Resultant.Value == 0) && (handles.x_axis.Value == 0)&& (handles.y_axis.Value == 0) && (handles.X_Y_Axis.Value == 0)&& (handles.Equation.Value == 0)&& (handles.Sine.Value == 0)&& (handles.Cosine.Value == 1))
%                 n=[-10:10];
%                 f=50;
%                 fs=1000
%                 x=cos(2*pi*(f/fs)*n);
%                 axes(handles.axes1);
%                 plot(n,x)
%           
% else
%     set(handles.funerorr,'string','ERORR!!! You Must Select Only One Option To Plot');
% end 

% fs= 500e3;  
% f= 1000;  
% nCyl=5;  
% t=0:1/fs:nCyl*1/f;  
% x=sin(2*pi*f*t);  
% plot(t,x)  
% title ('Continuous sinusoidal signal')  
% xlabel('Time(s)');  
% ylabel('Amplitude');  
global plot_fig
switch get(get(handles.uibuttongroup2,'SelectedObject'),'Tag')
    case 'sine'
        cla;
        fs= 500e3;  
        f= 1000;  
        nCyl=5;  
        t=0:1/fs:nCyl*1/f;  
        x=sin(2*pi*f*t);  
        plot(t,x)  
        title ('Continuous sinusoidal signal')  
        xlabel('Time(s)');  
        ylabel('Amplitude'); 
    case 'cosine'
        cla;
        t = 0:0.01:10;
        a=7;
        f=0.5;

        y = a*cos(2*pi*f*t);
        plot(t,y);
        title('Cosine Function');
        Xlabel('Time Axis');
        Ylabel('Amplitude Axis');
    case 'x'
        cla;
        x = get(handles.x_axis,'string');
        if isempty(x) 
            set(handles.error1,'string','Please enter X_axis');
            set( handles.error1,'ForegroundColor','red');
            
        else
            set(handles.error1,'string','');
            x = str2double(regexp(x,'\d*[\.]?\d*','match'));
            axes(handles.axes1);
            plot(x,'-');
        end
        
    case 'y'
        cla;
        y = get(handles.y_axis,'string');
        if isempty(y) 
            set(handles.error1,'string','Please enter Y_axis');
            set( handles.error1,'ForegroundColor','red');
            
        else
            set(handles.error1,'string','');
            y = str2double(regexp(y,'\d*[\.]?\d*','match'));
            axes(handles.axes1);
            plot(y,'-');
        end
        
    case 'xy'
        cla;
        x = get(handles.x_axis,'string');
        y = get(handles.y_axis,'string');
        if isequal(y,'') 
            set(handles.error1,'string','Please enter Y_axis');
            set( handles.error1,'ForegroundColor','red');
        elseif  isequal(x,'')
            set(handles.error1,'string','Please enter X_axis');
            set( handles.error1,'ForegroundColor','red');
        else
            set(handles.error1,'string','');
            x = str2double(regexp(x,'\d*[\.]?\d*','match'));
            y = str2double(regexp(y,'\d*[\.]?\d*','match'));
            axes(handles.axes1);
            plot(x,'-');
            hold on;
            plot(y,'-');
        end
        
    case 'eq'
        cla;
        equ = get(handles.eq, 'string');
         %if(isempty(equ))                                   
            %set(handles.error2, 'String', 'must enter data'); 
            %set(handles.error2, 'Visible', 'on');
           % return
         ezplot(equ)
%         %end
%         try
%             plot_fig = fplot(equ);                          
%         catch
%             plot_fig = fimplicit(equ);                      
%         end
        
end

% if get(get(handles.uibuttongroup2,'SelectedObject'),'Tag') == 'sine'
%     fs= 500e3;  
%     f= 1000;  
%     nCyl=5;  
%     t=0:1/fs:nCyl*1/f;  
%     x=sin(2*pi*f*t);  
%     plot(t,x)  
%     title ('Continuous sinusoidal signal')  
%     xlabel('Time(s)');  
%     ylabel('Amplitude');
%     
% elseif get(get(handles.uibuttongroup2,'SelectedObject'),'Tag') == 'cosine'
%     t = 0:0.01:10;
%     a=7;
%     f=0.5;
% 
%     y = a*cos(2*pi*f*t);
%     plot(t,x);
%     title('Cosine Function');
%     Xlabel('Time Axis');
%     Ylabel('Amplitude Axis');
% end

% --- Executes on button press in equal1.
function equal1_Callback(hObject, eventdata, handles)
% hObject    handle to equal1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
x = get(handles.x_axis,'string');
y = get(handles.y_axis,'string');

idx = get(handles.popupmenu1,'Value');
items = get(handles.popupmenu1,'String');
selectedItem = items{idx};
set(handles.operator1,'string',num2str(selectedItem));
if (isempty(x) || isempty(y))
    set(handles.error1,'string','Please enter all fields');
    set( handles.error1,'ForegroundColor','red');
else
    x = str2double(regexp(x,'\d*[\.]?\d*','match'));
    y = str2double(regexp(y,'\d*[\.]?\d*','match'));
    if(size(x) == size(y))
        if(selectedItem == '+')
            r = x+y;
            
        elseif(selectedItem == '-')
            r = x-y;
        elseif(selectedItem == '*')
            r = mtimes(x,y);
        elseif(selectedItem == '.')
            r = dot(x,y);
        end
            
    else
        set(handles.error1,'string','The two lists must be equal');
        set( handles.error1,'ForegroundColor','red');
    end
    set(handles.result1,'string',num2str(r));
end

% if(isequal(x,'') || isequal(y,''))
%     set(handles.error1,'string','Please enter all fields');

% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function error1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function equation_Callback(hObject, eventdata, handles)
% hObject    handle to equation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation as text
%        str2double(get(hObject,'String')) returns contents of equation as a double


% --- Executes during object creation, after setting all properties.
function equation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function eq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in cosine.
function cosine_Callback(hObject, eventdata, handles)
% hObject    handle to cosine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cosine
