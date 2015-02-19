### Week 5

###### Permissions

* Permission set the abilities that users have to work with files.
* Three distinct users for each piece of data: owner, group and others.
	owner: creater of the data.
	group: original set to the default group of the owner.
	other: everyone else.
* Your permission to access a piece of data depend on who you are in respect to the data.
* Whichever set of permissions you qualify for first is all you get.
* When data is created its permissions are set. After that, the only way to modify the permissions is through chmod. The permissions are determined by taking the default permissions, then applying umask to deny certain permissions.
* Permissions on any piece of data can be displayed via ls -l
* Permissions read (left to right):
<data type><owner permissions><group permissions><other permission><links to data><name of owner><name of group><size><date created><name of data>
* file type: file(-), directory(d), link(l)
* user permissions: read(r), write(w), execute(x)
* only have permission if letter is present, dash means no permission
* A file can be removed if that user has -wx permissions on the directory it is in, none needed on the file.
* A user does not need w permissions to rm an empty directory, but does need w permissions on the parent directory.
*inode number: The number associated with a specific piece of data that is stored in the inode table that the inner works of the linux system utilizes.
	- inode number can be seen via ls -i

Permissions need to utilize pieces of data:

| operations | permissions to dir | permissions to file |
| ---------- | ------------------ | ------------------- |
| ls dir | r | --- |
| ls -l dir | r-x | --- |
| ls -l dir/file | --x | --- |
| cat dir/file | --x | r |
| touch dir/file1 | -wx | --- |
| cat > dir/file | --x | -w- |
| rm dir/file | -wx | --- |
| mv dir/file dir/filex | -wx | --- |

Permissions needed for directory commands:
* r: ls
* w: add, delete, change names
* x: required to use dir


Examples:

jane01 can read and write the file1. 
c74176 members can read the file. 
others can not do anything. 
```
-rw-r----- jane01 c74176 ...... file1

```

This will only execute if the user has x permission on the dir
```
ls -l noex/fileA
```

This only runs if you have at least -wx permissions to the dir.
```
rm noex/file.txt
```


###### chmod
* Update the permissions on a piece of data.
* Using octal permissions settings:
	- r = 4
	- w = 2
	- x = 1
* If no other specifications are given:
	- Files default to 666
	- Dirs default to 777


Examples:

Add write permissions for owner
```
chmod u+w file1
```

Remove read and write permissions for group and others.
```
chmod og-rw file1
```

Set permissions as rw-r----- for file1
```
chmod 640 file1
```

Remove read permission from the group, add execute to owner
```
chmod g-r,u+x file1
```

###### umask
* Sets default permission limitations for newly created data
* Can set a umask for the life of your terminal directly into the command line and update at any time.
* To set a persistent env umask, have to set in .bashrc or .profile.
* umask is a setting in the user's process that acts as a filter to turn off (deny) permissions when data is created.



Example:

Allows for all permissions to be set
```
umask 000

```

Allows for no permissions to be set
```
umask 777

```

Does not allow read permissions for anyone.
```
umask 444
```

Does not allow for any permissions for group or other.
```
umask 77
```

Max permissions: rw--w-r--
```
umask 153
```

file2 will take the file1's permissions with it unless there is a umask that limits them.
```
cp file1 file2
```

if file_new already exist, it will get overwritten by retain the original permissions, ie. not get the permissions of f1.
```
cp f1 f1_new
```

###### etc

* chown: change the owner of a piece of data
	- chown newowner files-and-directories
	- chown becca file1 # becca is now the new owner

* chgrp: change the group of a piece of data
	- chgrp newgroup files-and-directories
	- chgrp family file1 # family is now the group

