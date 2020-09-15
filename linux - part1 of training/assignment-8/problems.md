- Process Manager
    Create a Utility(Script) which performs the following functionality
    1. n top CPU consuming processes
    2. n top Mem consuming processes
    3. Soft kill and hard kill after n retries when trying to kill a particular process.
    4. Zombie proesses find & kill
    5. Find child & parent processes of a particular process
    6. List User/Group processes
- JobExecutorSimulator
    - Utility that can run a script
        addScript(name, path)
    - Utility that can run a script on a scheduled duration as per cron expression
        addScript(name, path, cron)
    - Utility to send mail on success
    - Utility to generate & view logs of the operation
    - Utiity to clean up the historical execution
    - Update utlity to take parameters while adding script into system
Good to Do:
- Create an ssh utility
    1. Add a new remote host ssh connectivity detail
    2. Update remote host ssh connectivity detail
    3. Do SSH connectivity to a remote host
otssh add <alias> <host> <user> [<key path]
otssh update <alias> [ <host> ] [ <user> ] [ <key path> ]
otssh <alias>