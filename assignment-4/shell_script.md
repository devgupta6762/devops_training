##### Create a shell script for hello world with name ninja.sh via root user
>`vi ninja.sh`(****echo Hello world!!****)[*****screenshot*****](https://github.com/devgupta6762/linux/blob/bash/images/hello.png)
##### Verify the permission of ninja.sh
>`ls -l`(*******-rwxrwxr-x*******)
##### Execute the script, if it didn't get executed give appropriate permissions for root user.
>`chmod +x ninja.sh`
`./ninja.sh`
##### Switch to normal user and execute ninja.sh, if it didn't get executed give appropriate ownership to user (do not change the owner of file)
##### Move ninja.sh to a path variable use it as a binary ie invoke it from anywhere
>`sudo mv ninza.sh /bin`
- Special Permissions
  1. Learn about SUID, SGID and sticky bit.
  2. And Set it for a dummy file.
  3. Explore how SUID, SGID is used for passwd.  