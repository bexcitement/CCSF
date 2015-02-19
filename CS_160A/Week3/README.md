### Week 3

###### Shell Variables

	* A named location that contains a value
    * All vars in the shell are implicitly strings and not declared

Setting variables
```
	# set variables temporarily in your shell
	foo=bar
	ech $foo # returns bar

	# if there are space need to wrap in quotes
	foo="bar bar bar"

	# Variables can be set permanently they must be set in your .bashrc or .profile and then the file must be saved by running the source command
	# Permenent environment variables can be useful to alias frequently used commands or secret keys for applications, ex:
	alias p="pwd"

```

Examples:
	* All of this can be displayed by typing echo $VAR, ie. echo $PATH
	* $PATH: list of the directories searched to find commands
	* $HOME: absolute path to your home directory
	* $PWD: absolute path to your current directory
	* $LOGNAME: login name
	* $SHELL: absolute path to your shell location
	* $TERM: your terminal type

####### history

	* Displays a list of all your executed commands
    * Each previously executed command has a number associated with it
    * The command can be re-executed by using the up arrow or by using the command number with a bang at the beginning, ie. !104

###### etc

	* The location of any command can be display by using the type command, ex:
		type cd # returns cd is a shell builtin
		type mv # returns mv is hashed (/bin/mv)

	* The variable $_ gives you access to the last part of the reviously executed command, ex:
		ls Desktop/Example
		cd $_ # equivalent to cd Desktop/Example

