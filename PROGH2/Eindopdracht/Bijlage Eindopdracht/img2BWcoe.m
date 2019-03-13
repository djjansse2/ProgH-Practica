function img2 = img2BWcoe(imgfile, outfile)
% Create .coe file from .jpg image
% .coe file contains 12-bit words 
% each 12bits contains one 12-bit pixel
% color byte: [R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0]
% img2 = img2coe(imgfile, outfile)
% img2 is 8-bit color image
% imgfile = input .jpg file
% outfile = output .coe file
% Example:
% img2 = img2coe('loons240x160.jpg', 'loons240x160.coe');
img = imread(imgfile);
height = size(img, 1);
width = size(img, 2);
s = fopen(outfile,'w+');  %opens the output file
fprintf(s,'%s\n','; VGA Memory Map ');
fprintf(s,'%s\n','; .COE file with hex coefficients ');
fprintf(s,'; Height: %d, Width: %d\n\n', height, width);
fprintf(s,'%s\n','memory_initialization_radix=16;');
fprintf(s,'%s\n','memory_initialization_vector=');
cnt = 0;
img2 = img;
Gray = rgb2gray(img);
BW = im2bw(Gray);
for r=1:height
    for c=1:width
        cnt = cnt + 1;
        pix = BW(r,c);   
        fprintf(s,'%X',pix);
         
        if ((c == width) && (r == height))
            fprintf(s,'%c',';');
        else
            if (mod(cnt,32) == 0)
                fprintf(s,'%c\n',',');
            else
                fprintf(s,'%c',',');
            end
        end
    end
end
fclose(s);
