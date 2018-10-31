# Why?
This came from a before 6:30 am before-my-first-cup-of-coffee conversation with my husband, Miles, one morning. I add an explanation because if we'd discussed it later I hopefully would have suggested something other than a bash script. HOWEVER, grep executes quickly. Development and maintenance time probably completely offset this gain...but it is fun exercise.

# What?
For every serial number in the new line delimited master.txt file gather the rows in all the data files.

# The problem
The data files are VERY large. Using a conventional programming approach of pulling all the master rows into memory and then opening each file and looking for the matches was simply taking too long.

Ultimately Miles using python pandas proved both maintainable and performant.

# How to use
1. Have a unix or linux environment with bash 3.   
    1. This will not work on windows.   
1. Get code.  
    1. Clone this repository   
1. Run tests.   
    1. Open terminal windowMake sure you can run the test-search-no-mocking.sh and get no errors   
1. Run the script with your files.   
    1. master.txt: Replace the test master.txt with your list of unique matching patterns (e.g. serial numbers)   
    1. data-files directory: Replace all the files in this directory. The names of the files is NOT important.   
    1. ./search-all-data-files.sh > myOut.txt