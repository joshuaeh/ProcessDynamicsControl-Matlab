clc;clear all; close all;
% Grab cwd
root_dir = pwd;

% Create list of files and folders in cwd or subdirs
file_list = dir(fullfile(root_dir, '**\*.mlx'));

% Remove folders from list
% file_list = file_list(~[file_list.isdir]);
display(file_list);

for i=1:length(file_list)
    base_filename = file_list(i).name
    [dir, name, ~] = fileparts(base_filename);
    extension = '.tex';
    new_path = fullfile(dir, name, extension);
    matlab.internal.liveeditor.executeAndSave(base_filename);
end