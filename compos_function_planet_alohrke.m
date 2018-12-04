function [comp_vector] = compos_function_planet_alohrke(comp)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%   ...
%
% Function Call
%   ...
%
% Input Arguments
%   1. comp
%
% Output Arguments
%   1. comp_vector
%
% Assignment Information
%   Assignment:       	Individual MatLab Project
%   Author:             Alexandra, alohrke@purdue.edu
%   Team ID:            003-20      
%  	Contributor: 		Willow, wcrisova@purdue.edu
%                       Ryan, rleiferm@purdue.edu
%                       Lauren,lopez347@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
i = 0;
for i = [1, 1, 3]
    fprintf('Calibrating...\n');
    pause(.25);
end

%% ____________________
%% CALCULATIONS
%solid planets
if comp == 'solid'
    comp_vector = ["Mercury", "Venus", "Mars", "Pluto"];
%gas planets
elseif comp == 'gassy'
    comp_vector = ["Jupiter", "Saturn", "Uranus", "Neptune"];
else
    error('Error. Unknown composition');
end

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('Composition calculated\n');
pause(1);
%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

