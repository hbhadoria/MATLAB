function varargout = image_processing_project(varargin)
% IMAGE_PROCESSING_PROJECT MATLAB code for image_processing_project.fig
%      IMAGE_PROCESSING_PROJECT, by itself, creates a new IMAGE_PROCESSING_PROJECT or raises the existing
%      singleton*.
%
%      H = IMAGE_PROCESSING_PROJECT returns the handle to a new IMAGE_PROCESSING_PROJECT or the handle to
%      the existing singleton*.
%
%      IMAGE_PROCESSING_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGE_PROCESSING_PROJECT.M with the given input arguments.
%
%      IMAGE_PROCESSING_PROJECT('Property','Value',...) creates a new IMAGE_PROCESSING_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before image_processing_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to image_processing_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help image_processing_project

% Last Modified by GUIDE v2.5 08-Oct-2019 12:55:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @image_processing_project_OpeningFcn, ...
                   'gui_OutputFcn',  @image_processing_project_OutputFcn, ...
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


% --- Executes just before image_processing_project is made visible.
function image_processing_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to image_processing_project (see VARARGIN)

% Choose default command line output for image_processing_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes image_processing_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = image_processing_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in load.
function load_Callback(hObject, eventdata, handles)
% hObject    handle to load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
[filename pathname]=uigetfile({'*.jpg'}, 'File Selector');
fullpathname=strcat(pathname,filename);
axes(handles.axes1);
image=imread(fullpathname);
imshow(image);

% --- Executes on button press in gray.
function gray_Callback(hObject, eventdata, handles)
% hObject    handle to gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axes1);
gray=rgb2gray(image);
imshow(gray);

% --- Executes on button press in blackwhite.
function blackwhite_Callback(hObject, eventdata, handles)
% hObject    handle to blackwhite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axes1);
gray_image=rgb2gray(image);
bw_image=im2bw(gray_image);
imshow(bw_image);


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global image
axes(handles.axes1);
val=get(handles.slider1,'Value');
gray_image=rgb2gray(image);
brightness=val*gray_image;
imshow(brightness);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
