 # Cron  -
##### Have a clear understanding of all crontab fields.
##### Create 2 users such that one user can set up cron and others can't.
>`sudo useradd user1|user2` then `sudo -u user1 ` _to run the command as the specified user_
##### Create a file that holds the information whenever the system boots.
##### Clear cache of your system every 2 hours between 10 am to 8 pm daily.
>
  * `sudo su` (Switch to root user first)
  * `vi clearcache.sh` (Creating a shell script clearcache.sh)
  * `#!/bin/bash`
  * `echo "echo 3 > /proc/sys/vm/drop_caches"`
  * `#chmod 755 clearcache.sh` (Set execute permission on the clearcache.sh file)
  * `#crontab -e`
  * 0 10-20/2 * * * /path/to/clearcache.sh`
  * `#crontab -l`

##### Append the current system timestamp in the file every 15 seconds.
>`date +"%s"`(current timestamp)
ubuntu@ip-172-31-19-63:~$ vi timestamp.sh
#!/usr/bin/bash
curr_dt=`date +"%Y-%m-%d-%H-%M-%S"`
log_file=script_name.$curr_dt.log
ubuntu@ip-172-31-19-63:~$ chmod 755 timestamp.sh
crontab -e
 m h  dom mon dow   command
     * * * * * /path/to/timestamp.sh
    * * * * *  sleep 15; /path/to/timestamp.sh
ubuntu@ip-172-31-19-63:~$ crontab -l


           
  


- System Info
    - Create a utility to identify issues
        - List out all the mount points that are over-utilized
            - Disk consumption is more than 80%
        - List out all the mount points that are under-utilized
            - Disk consumption is more than 20%
        - For over-utilized mount point, identify 3 folders which are contributing to the max disk space
        - Identify if the system is over-utilized in terms of memory consumption
            - Clean up the memory
            - Create a temporary swap
        - Identify if the system is underutilized in terms of memory consumption
            - Remove temporary swap