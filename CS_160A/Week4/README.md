### Week 4

###### Copy (cp)
* Command to copy items within the linux file system from one location to another

The basics:

Copy one file to another. If file2 exists, it is overwritten.
	
```
cp file1 file2

```

Copy one file or more files into an existing directory. The files creted in the dir will ahve the same name as the original(s). If there is a file name collision, the old files are overwritten.
```
cp file1 file2 file3 dir1/

```

Copy dir1 and everything underneath and put it underneath dir2. If there is a directory name collision, all old files within that directory remain and new files will be copied over. 

```
cp -r dir1/ dir2/

```

More examples:
```
# copy A and everything underneath to B
cp -r A/ B/

# B directory does not already exist
# Renames A to B
cp -r A/ B/

# B directory and B/A directory exist
# copies or overwrites everything underneath B/A
cp -r A/ B/

# if one of the files below F already exists in . as a directory, all other files will be still be copied but that file with a directory name collision will be skipped
# This happens because cp sees the wilcard as several, seperate different commands back to back
cp F/* .

# if current directory already has a dir1 directory cp will merge the contents of the old and the new dir1 directories
cp -r src/dir .

```

###### Move (mv)
* The move command is used to rename or rerrage items in the file system.
* Automatically recursive.
* All it does is break and create connections.
* Files can replace files, all other name collisions are illegal.

The Basics:

Rename file x to y.
```
mv x y

```

Rename directory x to y.
```
mv x/ y/

```

Move multiple files underneath an existing directory.
```
mv file1 file2 file3 dir1/

```

More examples:
```
mv x y
* if y does not already exist:
	- x is renamed to y
* if x is a file and y already exists: 
	- y is removed and x is renamed to y
* if y already exists as a directory
	- x gets moved underneath y
* if x is a directory and y is a file:
	- throws an error and nothing changes

```

###### find
* The find command will return the individual paths to everything in the current directory.
* Can be run with or without additional arguments.
* Additional arguments include type and name matching.




Examples:

Find all files in the current directory.
```
find -type f # d is directory, l is link

```

find all directories with a single character name
```
find -type d -name "?"
```

find all files that start with the letter A
```
find -type f -name "A*"
```

find all files in Desktop
```
find /Desktop -type f
	```

More information on find arguments: http://www.tecmint.com/35-practical-examples-of-linux-find-command/





