log_file = open("um-server-01.txt") #This line is opening the txt file in the same folder and saving it to a variable name.



def sales_reports(log_file):        #This is a function that takes in the opened file.
    for line in log_file:           #The function then loops over the file one line at a time.
        line = line.rstrip()        #Removes any whitespace at the end of the string and resets the variable line to current line.
        day = line[0:3]             #saves this position in current line to a variable called day.
        if day == "Mon":            #checks to see if the value of day is strictly equal to the string "Tue". (Updated to "Mon")
            print(line)             #if the statement passes then the function will print the line.


sales_reports(log_file)             #calls the function so that it will run when the file is ran.

#EXTRA CREDIT