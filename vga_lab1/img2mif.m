function img2mif(varargin)
%img2mif(varargin)
%
%img2mif
%  You can call this function with zero input arguments. For it to run
%  successfully though, you must have a file called "img_in.jpeg" saved 
%  in your current folder.
%
%img2mif("image_file_name")
%  If you supply only one input, it takes that input as the file name of
%  the image file to be converted. Any file extension that can be read by
%  imread will work (e.g. jpg, jpeg, png, bmp, etc). Please include the
%  extensions in the file name.
%
%img2mif("image_file_name", "desired_mif_name")
%  If you call the function with two inputs, the first input is taken as
%  the image file to be converted. The second is taken as the name of the
%  mif file to be created. Please include the extensions in the file names.

% disp(varargin) % here just for debugging if something isn't working as
% exptected.
if size(varargin,1) == 0
    im = imread("img_in.jpeg");
    mif_name = "img_out.mif";
elseif size(varargin,1) == 1
    im = imread(string(varargin{1}));
    mif_name = "img_out.mif";
elseif size(varargin,1) == 2
    im = imread(string(varargin{1}));
    mif_name = string(varargin{2});
else
    error("Incompatible number of inputs")
end
im = im2uint8(im);
fid = fopen(mif_name,'W');
imsize = size(im);
count = 0;
fprintf(fid,'WIDTH = 8;\n');
fprintf(fid,'DEPTH = %d;\n',imsize(1)*imsize(2));
fprintf(fid,'ADDRESS_RADIX = HEX;\n');
fprintf(fid,'DATA_RADIX = HEX;\n');
fprintf(fid,'CONTENT BEGIN\n\n');
for i=1:imsize(1)
    for j=1:imsize(2)
        fprintf(fid,'%x  : %x;\n',count,im(i,j,1));
        count = count + 1;
    end
end
fprintf(fid,'END;\n');
fclose(fid);