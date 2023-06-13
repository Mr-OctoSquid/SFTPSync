# SFTPSync.
Very basic batch script to automatically upload files from a local server to a remote SFTP site.

# Disclaimer.
This script is multiple years old. It does not do any form of log clean up either. Use at own risk.

# Requirements.

1. Winscp on processing server.
2. Local and remote directory access.
3. Service account to run script under if being automated.

# Setup.

1. Create a folder for script to reside in. I suggest: C:\SFTP Sync tool

2. Edit Sync Tool.bat

2a. Double check the directory where winscp is installed: "C:\Program Files (x86)\WinSCP"

3a. Set log location as needed: (If a remote directory, service account needs permissions to the remote directory.)

4a. Setup script location: /script="C:\SFTP Sync tool\script.txt"

3. edit script.txt

3a. Set username and password for remote server.

3b. Set set remote server IP or DNS name.

3c. Set hostkey for remote server. (https://winscp.net/eng/docs/scripting#hostkey)

3d. Setup scrip action. (https://winscp.net/eng/docs/scripting#commands)

# Setup script to run automatically.

1. Create a service account on the local system. (Permissions will need to be set appropriatly depending on server enviroment. I will not help with this.)

2. Create a scheduled job to call the batch file. Make sure the name, time of execution and action are setup properly.

2a. Run wheather user is logged on or not enabled.

2b. Run with highest pribileges.

2c. Change user and set user as the service account.

3. Manually Run the scheduled job to test and check the log file.
