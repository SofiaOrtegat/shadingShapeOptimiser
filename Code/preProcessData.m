
function [imageMatrices, lightDirections, denoLight] = preProcessData(x, y, z)
[~,~,index] = resamplingData(x, y, z);
s = size(index, 1);
imageMatrices = zeros(237, 200, s); % image size need to be changed every time!!
lightDirections = zeros(s, 3);
for i = 1:s
   lightDirections(i, :) = [x(index(i)), y(index(i)), z(index(i))];
   %absolutePath of input data
   absolutePath = '/Input/data10/image';
   if index(i)<10
       path = strcat(absolutePath, '000', num2str(index(i)), '.bmp');
   elseif index(i)<100