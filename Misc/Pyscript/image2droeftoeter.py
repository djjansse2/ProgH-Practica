import sys
from PIL import Image


def Convert(ImageName):
    img = Image.open(ImageName)
    if img.mode != 'RGB':
        img = img.convert('RGB')
    width = img.size[0]
    height = img.size[1]
    print width
    print height
    filetype = ImageName[ImageName.find('.'):]
    filename = ImageName.replace(filetype, '.txt')
    imgDroeftoeter = open(filename, 'wb')

    cnt = 0
    line_cnt = 0
    for r in range(0, height):
        imgDroeftoeter.write('(')
        for c in range(0, width):
            cnt += 1
            try:
                R, G, B = img.getpixel((c, r))
            except IndexError:
                print 'Index Error Occurred At:'
                print 'c: {}, r:{}'.format(c, r)
                sys.exit()

            Rb = str(getBit(R))
            Gb = str(getBit(G))
            Bb = str(getBit(B))

            Outbyte = Rb + Gb + Bb

            try:
                imgDroeftoeter.write('"' + Outbyte + '"')
            except ValueError:
                sys.exit()

            imgDroeftoeter.write(',')
        imgDroeftoeter.write('),\n')
    imgDroeftoeter.close()
    print


def getBit(byte):
    if byte > 127:
        return 1;
    if byte <= 127:
        return 0;


if __name__ == '__main__':
    ImageName = raw_input('Enter the name of your image: ')
    Convert(ImageName)
