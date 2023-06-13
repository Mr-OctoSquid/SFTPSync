# SFTPSync
Very basic batch script to automatically upload files from a local server to a remote SFTP site.


#Requirements
1. Winscp on processing server.
2. Local and remote directory access.
3. Service account to run script under if being automated.

# Setup
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

3. Run the script to test.

# Example log output.

----Script Start-----
Tue 01/08/2019 10:23:17.27
---------------------
Searching for host...
Connecting to host...
Authenticating...
Using username "REDACTED".
Authenticating with pre-entered password.
Authenticated.
Starting the session...
Session started.
Active session: [1] REDACTED@REDACTED
Comparing...
Local 'D:\wins\1\HL7\CAstate' => Remote '/Uploads'
Synchronizing...
Local 'D:\wins\1\HL7\CAstate' => Remote '/Uploads'
D:REDACTED.DAT | 5 KB | 0.0 KB/s | binary | 100%
D:REDACTED.DAT | 26 KB | 285.4 KB/s | binary | 100%
D:REDACTED.DAT | 12 KB | 318.1 KB/s | binary | 100%
D:REDACTED.DAT | 13 KB | 317.8 KB/s | binary | 100%
D:REDACTED.DAT | 6 KB | 316.2 KB/s | binary | 100%
D:REDACTED.txt | 0 B | 313.3 KB/s | binary | 0%
Session 'REDACTED@REDACTED' closed.
No session.
----Script End-----
Tue 01/08/2019 10:23:23.11
-------------------
