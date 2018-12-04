function[planet_name] = planet_project_alohrke(temp, comp, gravity)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 133
% Program Description 
%   This program tells you which planet in the solar system you are on 
%   on tempertaure, gravity, and composition (solid or gas) of the planet.
% Function Call
%   function[planet_name] = planet_project_alohrke(temp, comp, gravity);
%
% Input Arguments
%   1. temperature (C)
%   2. gravity
%   3. comp
% Output Arguments
%   1. planet_name
% Assignment Information
%   Assignment:       	Individual MatLab Project
%   Author:             Alexandra, alohrke@purdue.edu
%   Team ID:            003-20      
%  	Contributor: 		Willow, wcrisova@purdue.edu
%                       Ryan, rleiferm@purdue.edu
%                       Lauren,lopez347@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% You must input temperature, compositon and gravity in that exact order.
% temperture is in celsius
% gravity is in m/s^2
% comp is either 'sol' (solid) or 'gas' (parenthesis included)
% Doing otherwise will cause an error
%%



%% ____________________
%% INITIALIZATION

planet_name = ' ';
fprintf('Thank you for using the Planet Identification Module.\n');
pause(1);


%% ____________________
%% CALCULATIONS
if isnan(temp)
    error('Temperature cannot be read. Please input a real number');
else
end
if(temp == 15)
    if (gravity == 9.8)
        if (comp == 'solid')
    fprintf('You are on Earth! Welcome home!');
        end
    end
else
temp_vector = temp_function_planet_alohrke(temp);
comp_vector = compos_function_planet_alohrke(comp);
gravity_vector = gravity_function_planet_alohrke(gravity);
temp_comp = intersect(temp_vector, comp_vector);
planet_name = intersect(temp_comp, gravity_vector);
if (size(planet_name) > 1)
    for i = (1:size(planet_name))
       fprintf('You may be on %f', planet_name);
       i = i + 1
    end
else
    fprintf('The temperature is %0.0f degrees Celsius\n', temp);
    pause(1);
    fprintf('The composition of the planet is ');
    disp(comp);
    pause(1);
    fprintf('The gravity of the planet is %0.1f meters per second squared\n', gravity);
    pause(1);
    fprintf('You are on ');
    disp(planet_name);
    pause(1);
    fprintf('The program has now completed.');
end
end



%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I/We have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I/we provided
% access to my/our code to another. The project I/we am/are submitting
% is my/our own original work.

