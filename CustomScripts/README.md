#### __Setting up a Bash Script on Mac__

###### Navigate to your 'user' directory. 
```
cd ~
```
  To confirm your in the right directory run: 
```
pwd
```
  The result should show: /Users/estengrove
  But replace estengrove with whatever your username is.
###### Next create the a folder called bin. If it's already created, move to the next step.
```
mkdir bin
```
###### Then open the .bash_profile file:
```
nano .bash_profile
```
  If the file doesn't exist simply type:
```
touch .bash_profile
Then type: nano .bash_profile
```
###### Now we need to include the path to the bin directory inside your bash profile:
```
export PATH=$PATH:/Users/estengrove
```
###### Then save the file:
```
Press CTRL+O
Then ENTER
Then CTRL+X
```
  Now you're ready to create your first bash script. NOTE: All bash scripts must include: !#/bin/bash at the top of the file.
#### Let's create our first bash script
###### Navigate to the bin directory
```
cd bin
```
###### Create a new file without an extension. Like hello-world
```
touch hello-world
```
###### Then open the new file and let's create our script
```
nano hello-world
```
  Then paste in: ```!#/bin/bash``` at the top of the file
###### Then let's say "Hello World!". Type:
```
echo Hello World!
```
###### The save the file
```
Press CTRL+O
Then ENTER
THEN CTRL+X
```
#### CONGRATS! You've made your first bash script. Let's see it run. 
Type: ```sh hello-world```
The Result should print: ```"Hello World!"``` in the terminal.


