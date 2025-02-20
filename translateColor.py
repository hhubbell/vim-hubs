# 
# Description:  Convert hex values in colorscheme to nearest xterm256 code
# Author:       Harry Hubbell
# Date:         2014-01-15
# 

import csv
import math
import sys


def findNearest(rgb, library):
    """
    Find nearest value in color list
    """
    distance = []
    for color in library:
        distance.append(pow(rgb[0] - color[0], 2) + pow(rgb[1] - color[1], 2) + pow(rgb[2] - color[2], 2))

    return distance.index(min(distance))

def hex_to_rgb(colorhex):
    """
    Return a RGB tuple of the hex color value
    """
    if colorhex[0] == '#':
        colorhex = colorhex[1:]

        r = int(colorhex[0:2], 16)
        g = int(colorhex[2:4], 16)
        b = int(colorhex[4:6], 16)

    return (r, g, b)

def read(fname):
    """
    Read input csv files which do not have header rows
    """
    with open(fname, 'r') as f:
        reader = csv.reader(f)

        return list(reader)

def write(fname, data):
    """
    Write output csv file without header rows
    """
    with open(fname, 'w') as f:
        writer = csv.writer(f)
        writer.writerows(data)


if __name__ == '__main__':
    t_co256 = read('./data/xterm256lib.csv')
    cscheme = read('./data/colors_gui.csv')

    # Convert hex library to rgb
    converted_colors = []
    for record in t_co256:
        converted_colors.append(hex_to_rgb(record[0]))

    res = []
    for color in cscheme:
        rgb = hex_to_rgb(color[1])
        
        # Cycles through xterm256 library lookup for nearest approximate value
        closestColorI = findNearest(rgb, converted_colors)

        t_co = t_co256[closestColorI][1]
        res.append([color[0], t_co])

        print("%15s -> %3s" % (color[0], t_co))

    write('./data/colors_256.csv', res)
