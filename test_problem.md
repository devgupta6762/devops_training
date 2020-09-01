# ASSIGNMENT DAY -1
1.Create a user test1 using useradd
>`sudo useradd test1`

2.Create a user test2 using adduser
>`adduser test2`

3.Compare their entries in /etc/passwd file and /etc/shadow file
>`less /etc/passwd file`|`sudo less /etc/shadow file`
/etc/passwd file aims at user account details while /etc/shadow aims at the user's password details. the passwd file is world-readable. shadow file can only be read by the root account. The user's encrypted password can only be stored in /etc/shadow file

4.Add a new group named testGroup
>`sudo group add testgroup`*and to check whether group is present or not*`getent group testgroup`

5.Add test1 and test2 to that group using usermod
>` sudo usermod -a -G testgroup test1`|`sudo usermod -a -G testgrouptest2`

6.Make test1 to be able to login to system and work like normal user
>`sudo passwd test1`

7.Remove user test1 and test2
>switch to user first {_su - [username]_}`sudo userdel test1`|`sudo userdel test2`

8.Remove group testGroup
>`sudo groupdel testgroup`

[Adding Users to Linux Groups and User Management
](https://www.pluralsight.com/blog/tutorials/linux-add-user-command)