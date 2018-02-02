#Bucket Storage Backup Script

A small script to create backups of a datastore into a Google Cloud Bucket.

###Installation

1. Have Git installed on a Google Cloud Console enabled VM with all privileges

```sh
sudo apt-get -y update;
sudo apt-get install -y git;
```

2. Clone this repo into the VM

`git clone https://github.com/bcpurleigh/clocoss-4`

3. Change directory into the newly created clocoss-4 directory.

`cd clocoss-4`

4. Run the below command to activate the shell scirpt to create the bucket and perform the first backup.

`sh startup.sh`

5. Once completed, enter the Cronjob manager for Linux in a CLI editor.

`crontab -e`

6. Append the following code to the bottom of the file.

`0 * * * * sh /home/{{username}}/clocoss-4/cron.sh`

7. EXTRA: You can add a MAILTO attribute above the previous line of code in `crontab -e` to recieve email logs.

`MAILTO={{your_email}}`

So that it looks like the code below:

```sh
MAILTO=johndoe@example.com
0 * * * * sh /home/{{username}}/clocoss-4/cron.sh
```
