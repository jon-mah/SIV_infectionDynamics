"""
The purpose of this script is to read in 'VirusViewByWeek.csv' as downloaded
from the CDC, and then copy and manipulate its data to produce three other .csv
files for analysis

Output:
all_dat.csv 	: Contains all of the data in 'VirusViewByWeek', but with
                  reorganized header names
H3_dat.csv		: Contains only the relevant data from the H3N2 strain
                  of Human Influenza.
chronoDat.csv   : Contains  the relevant data from the H3N2 strain of Human
                  Influenza with the 'Week' column correctly indexed and
                  updated information regarding the total population infected
                  by Influenza in each week.

JCM 8_17_2018
"""

import pandas as pd

def main():

    inputFileName = '../Data/VirusViewByWeek.csv'
    data = pd.read_csv(inputFileName) # Construct dataframe
    # Rename columns for easier access
    data = data.rename(index=str,
        columns = {'Year': 'Year',
                   ' Week': 'Week',
                   ' Virus': 'Virus',
                   '0-4 yr': 'zeroToFour',
                   '5-24 yr': 'fiveToTwentyFour',
                   '25-64 yr': 'twentyFiveToSixtyFour',
                   '65+ yr': 'sixtyFivePlus'})
    data.to_csv('../Data/all_dat.csv', index = False) # Output all_dat.csv
    H3_dat = data[data.Virus == 'A (H3)'] # Only H3N2
    H3_dat.to_csv('../Data/H3_dat.csv', index = False) # Output H3_dat.csv
    with open('../Data/H3_dat.csv', 'r') as input:
        output = '../Data/chronoDat.csv'
        with open(output, 'w') as f:
            for line in input:
                if 'Year' in line:
                    f.write('Year,Week,Virus,totalPop\n') # Rewrite new .csv
                else:
                    year = line.split(',')[0]
                    week = int(line.split(',')[1])
                    virus = line.split(',')[2]
                    # totalPop is the total population infected in that week,
                    # as summed  from the 4 age categories.
                    totalPop = int(line.split(',')[3]) + int(line.split(',')[4]) + int(line.split(',')[5]) + int(line.split(',')[6])
                    f.write(year + ',' + str(week + (int(year) - 1998) * 52) + ',')
                    f.write(virus + ',')
                    f.write(str(totalPop) + '\n')

main()
