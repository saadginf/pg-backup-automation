# pg-backup-automation
My script to automaticly backup a postgres dataBase and store files in a server via scp
1. as root create a file .pgpass at ~/
2. copy the content : 127.0.01:5432:dbname:dbuser:password
3. create directory backup at /home
4. create .sh file with the content below 
5. make the changes

=> you can excute it directly sh filename.sh
#### or
=> execute crontab -e and paste the line :
0 5 * * * sh path/filename.sh
#### your back up will be executed evry day at 5 a.m
