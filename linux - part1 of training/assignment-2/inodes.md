# Inodes:
• ***create a file File1 and found it's inode number***
>`touch File1.txt`&&`stat File1.txt|ls -i`

• *****_change the inode no of File1_*****
>`the only way to change the inode number is to copy the file to a new file (which then would get a new inode`
[***inode number***](https://github.com/devgupta6762/devops_training/blob/master/linux%20-%20part1%20of%20training/images/image1.png.png)


• ****change the permission of File1 and add some content in File1 using the inode no of File1****
>`chmod + rwx File1.txt`&&`cat >> File1.txt{add content}`
You cannot access files by inodes, because that would break access control via permissions. For example, if you don't have the permission to traverse a directory, then you can't access any of the files in that directory no matter what the permissions on the file are. If you could access a file by inode, that would bypass directory permissions.
[****screenshot****](https://github.com/devgupta6762/devops_training/blob/master/linux%20-%20part1%20of%20training/images/permissiion.png)


• ****find out the total no of inodes assigned to your file system****
>`df -i`
[****screenshot****](https://github.com/devgupta6762/devops_training/blob/master/linux%20-%20part1%20of%20training/images/total_inodes.png)

• ****create a directory dir_1,make a hard link and soft link of dir_1****
>1. `mkdir dir_1`****{to make a directory}****
2. The reason hard-linking directories is not allowed is a little technical. Essentially, they break the file-system structure. You should generally not use hard links anyway
3. ln -s (file path) |[****screenshot****](https://github.com/devgupta6762/linux/blob/bash/images/softlink.png)

* Hard link is the exact replica of the actual file it is pointing to . Both the hard link and the linked file shares the same inode . If the source file is deleted ,the hard link still works and you will be able to access the file until the number of hard links to file isn't 0(zero)*
 * Soft link is a symbolic link,It simply points to another entry somewhere in the file system*

• ****list out all the links of directory "/"****
>`ls -la`

• *****checkout the inode usage of your filesystem if it's more than 50% then delete all the files whose size is less than 10 kb but before deleting the files copy the content of the files in final_data.log.*****
>`df -i`{*copy the content of files having inode usage less than 10% ,after then delete that file*}

• now simulate this problem for a directory Sample_Dir which will act as our dummy file system.Sample_Dir will have multiple directories and all the directories will have multiple files of any size.

>#!/bin/bash
 set -ex
 IFS=$'\n'
 cd Sample_Dir
 rm -rf final_data.log
 array=($(find . -type f -size -10k))
 echo "${array[*]}"
 len="${#array[@]}"
 echo "$len"
 for i in "${array[@]}"
 do
    echo $i
    cat $i >> final_data.log
    rm -rf $i
 done
