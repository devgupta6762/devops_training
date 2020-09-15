###Log management###
1. Create a log analyzer utility that will take a log file of a web server as an input and perform various analyses on it. Below are some examples
  a. Unique hits coming in last hour/minute
  b. Total hits came in last hour/minute
  c. Total successful responses in last  hour/minute
  d. Unique IP listing with count
  e. Search on the basis of time
  f. ..etc[atleast 5 more]; (i.e, You have to come up with your own insights as well.)
2. Create a log analyzer utility that will take a log file of an application server as an input and perform various analyses on it. You have to come up with your own analysis as we have done for web server logs.
###Log Rotate###
1. Create a log rotate utility that will analyze any given log file path as input and it should perform multiple activities based on below examples
  a. It should archive the given file path and compress the same if the file size is more then 50mb
  b. It should archive the given file path and compress the same if the file is older then 1-day
  c. Archived/compressed files older than 7 days should be moved to a remote destination ( consider s3 bucket here) and deleted from the server itself
2. Have to create a utility to generator logs file as well on which your log rotate utility would be tested.
Good to do:
###Log management###
1. Create a utility to generate web server logs
2. Create a utility to generate application server logs
###Log Rotate###
1. Come up with at least one more use case where this utility would be useful in terms of log rotate management.
###Miscellaneous###
1. Create a utility that automatically adds any new user entry created (not any service user) into sudoers file and give him NOPASSWD sudo access.