# Bash-Examples

Bash examples while learning Bash

* Use tab for autocompletion.  
* Use _**ctrl+r**_ search_term to search commands you have previously used.  
* Quickly move to the beginning or end of a line with _**ctrl+a**_ and _**ctrl+e**_.  
* Reuse the previous command in the present command with _**!!**_.  
* You can run multiple commands in a single line by separating commands with a _**;**_.  

_**ls**_  
List directory contents.  
Example: ls /applications will display all the files and folders stored in the applications folder.  
  
_**cd**_  
Change to a directory.  
Example: Change from the current directory to /usr/local with cd /usr/local.  
  
_**mv**_  
Rename or move file(s) or directories.  
Example: the command mv todo.txt /home/qlarson/Documents would move "todo.txt" to the "Documents" directory.  
  
_**mkdir**_  
Create a new directory.  
Example: mkdir freecodecamp will make a directory named "freecodecamp".  

_**rmdir**_  
Delete empty directories.  
  
_**touch**_  
Create an empty file with the specified name.  
  
_**rm**_  
Remove file(s) and/or directories.  
Example: rm todo.txt will delete the file.  

_**locate**_  
Locate a specific file.  
Example: locate -i vacuum*mop command will search for any file that contains the word "vacuum" and "mop". The -i makes the search case-insensitive.  
  
_**clear**_  
Clear a command line screen/window for a fresh start.  
  
_**cp**_  
Copy files and directories.  
Example: the command cp todo.txt /home/qlarson/Documents would create a copy of "todo.txt" to the "Documents" directory.  

_**alias**_   
Create an alias for Linux commands.  
Example: alias search=grep will allow you to use search instead of grep.  

_**cat**_  
Display the contents of a file on the screen.  
Example: cat todo.txt will show the text of "todo.txt" on the screen.  

_**chown**_  
Change who owns a file.  
Example: chown qlarson todo.txt will make "qlarson" the owner of "todo.txt".  

_**chmod**_  
Change a file’s permissions.  
Example: chmod 777 todo.txt will make "todo.txt" readable, writable, and executable by everyone. The digits in "777" specify the permissions for user, group, and others, in that order.

_**sudo**_  
Perform tasks that require administrative or root permissions.  
Example: Use sudo passwd quincy to change the password of user "quincy".
"Sudo make me a sandwich."

_**find**_  
Search for files matching a provided pattern. This command is for searching file(s) and folder(s) using filters such as name, size, access time, and modification time.  
Example: find /home/ -name todo.txt  will search for a file named "todo.txt" within the home directory and its subdirectories.

_**grep**_  
Search files or output for a particular string or expression. This command searches for lines containing a specified pattern and, by default, writes them to the standard output.  
Example: grep run todo.txt will search for the word "run" in the "todo.txt" file. Lines that contain "run" will be displayed.

_**date**_  
Display or set the system date and time.

_**df**_  
Display report on the system’s disk space usage.

_**du**_  
Show how much space each file takes up. This will show the size in disk block numbers. If you want to see it in bytes, kilobytes, and megabytes, add the -h argument like this: du -h.

_**file**_  
Determine the type of a file.  
Example: file todo.txt would likely show the type of "ASCII text".

_**history**_  
Shows the command history.

_**kill**_  
Stop a process.  
Example: Stop a process with a PID of 485 using the command kill 485. Use the ps command (below) to determine the PID of a process.

_**less**_  
View the contents of a file one page at a time.  
Example: less todo.txt will display the contents of "todo.txt".

_**ps**_  
Display a list of the currently running processes. This can be used to determine PIDs needed to kill processes.

_**pwd**_  
Display the pathname for the current directory. "print working directory"

_**ssh**_  
Remotely log in to another Linux machine, over the network.  
Example: ssh quincy@104.25.105.32 will login to 104.25.105.32 using the username "quincy".  

_**tail**_  
Display the last 10 lines of a file. See fewer or more lines by using the -n (number) option.  
Example: tail -n 5 todo.txt will display the last 5 lines of "todo.txt".  

_**tar**_  
Store and extract files from a tarfile (.tar) or tarball (.tar.gz or .tgz).  

_**top**_  
Displays the resources being used on your system, similar to the task manager in Windows.  
