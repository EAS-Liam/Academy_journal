ls > first_file
mkdir backup_first_file
cp first_file backup_first_file/backup_first_file
mkdir modified_file
cp first_file modified_file/updated_file
ls >> modified_file/updated_file
cd modified_file
chmod 0700 updated_file