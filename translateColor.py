#! /usr/bin/env python

import sys, csv

# --------------------
# Convert hex values in a vim colorscheme to rgb 
# for terminal vim
#--------------------

# Get filename
filename = raw_input('Enter Filename: ')

# Since this program really only serves a single 
# purpose, I will assume that I can enter the correct
# filename without messing it up.
#
# Going with a csv file for ease.
#
# maybe later I will add error checking.

with open(filename, 'r') as csvfile:
    content = csv.reader(csvfile);

    for row in content:
        row[1] = row[1][1:]
        # FOR TESTING
        print row[1]
        
        # Agian, this assumes that the file entered is the
        # correct one and has the expected syntax.
        #
        # Not very scalable but it works
        r = row[1][1:2]
        g = row[1][3:4]
        b = row[1][5:6]

        


# close file
csvfile.close()
