function [temp_vector] = temp_function_planet_alohrke(temp)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%   ...
%
% Function Call
%   function [temp_vector] = temp_function_planet_alohrke(temp)
%
% Input Arguments
%   1. temp
%
% Output Arguments
%   1. temp_vector
%
% Assignment Information
%   Assignment:       	Individual MatLab Project
%   Author:             Alexandra, alohrke@purdue.edu
%   Team ID:            003-20      
%  	Contributor: 		Willow, wcrisova@purdue.edu
%                       Ryan, rleiferm@purdue.edu
%                       Lauren,lopez347@purdue.edu
%
% Source: https://solarsystem.nasa.gov/resources/681/solar-system-temperatures/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
t = -500;
while (t<0)
    t = t+100;
    fprintf('Calibrating...\n');
    pause(.25);
end


%% ____________________
%% CALCULATIONS
%hot planet (Mercury, Venus)
if temp > 0
    temp_vector = ["Mercury", "Venus"];
end
%cold planet (Mars, Jupiter, Saturn, Uranus, Neptune, Pluto)
if temp < 0
    temp_vector = ["Mars","Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"];
end


%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('Temperature calculated\n');
pause(1);

%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

