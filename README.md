# Why?
This came from a before 6:30 am before-my-first-cup-of-coffee conversation with my husband, Miles, one morning. I add an explanation because if we'd discussed it later I hopefully would have suggested something other than a bash script. HOWEVER, grep executes quickly. Development and maintenance time probably completely offset this gain...but it is fun exercise.

# What?
For every serial number in the new line delimited master.txt file gather the rows in all the data files.

# The problem
The data files are VERY large. Using a conventional programming approach of pulling all the master rows into memory and then opening each file and looking for the matches was simply taking too long.

Ultimately Miles using python pandas proved both maintainable and performant.