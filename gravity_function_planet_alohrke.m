function [gravity_vector] = gravity_function_planet_alohrke(gravity)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%   ...
%
% Function Call
%   function [gravity_vector] = gravity_function_planet_alohrke(gravity)
%
% Input Arguments
%   1. gravity
%
% Output Arguments
%   1. gravity_vector
%
% Assignment Information
%   Assignment:       	Individual MatLab Project
%   Author:             Alexandra, alohrke@purdue.edu
%   Team ID:            003-20      
%  	Contributor: 		Willow, wcrisova@purdue.edu
%                       Ryan, rleiferm@purdue.edu
%                       Lauren,lopez347@purdue.edus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Gravity info source: https://www.smartconversion.com/otherinfo/gravity_of_planets_and_the_sun.aspx

%Jupiter 	24.92
%Neptune 	11.15
%Saturn 	10.44
%Uranus 	8.87
%Venus      8.87
%Mars       3.71
%Mercury 	3.7
%Pluto      0.58

%% ____________________
%% INITIALIZATION

if gravity < 0
    error('Gravity must be a positive number');
else

i = 0;
while i < 5
    fprintf('Calibrating...\n');
    i = i + 1;
    pause(.25);
end

%% ____________________
%% CALCULATIONS
if gravity > 8
    if gravity == 10.4
        gravity_vector = ["Saturn"];
    elseif gravity == 11.2
        gravity_vector = ["Neptune"];
    elseif gravity == 24.9
        gravity_vector = ["Jupiter"];
    elseif gravity == 8.9
        gravity_vector = ["Venus", "Uranus"];
    else
        error('Error. Unkonwn planet');
    end
elseif gravity < 8
    if gravity == 3.7
        gravity_vector = ["Mercury", "Mars"];
    elseif gravity == 0.6
        gravity_vector = ["Pluto"];
    else
        error('Error. Unkonwn planet');
    end
else
    error('Error. Unknown planet');
end

end
%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('Gravity Calculated\n');
pause(1);

%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

