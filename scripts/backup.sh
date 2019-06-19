sudo rsync -aAXv --progress \
  --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","*/caches/*","*/cache/*","*/Cache/*","*/.cache*","*/ShaderCache/*","/home/*cache*","/home/*/.thumbnails/*","/home/*/.local/share/Trash/*","/home/*/.thumbnails/*"} \
  / /mnt/backup_drive/
