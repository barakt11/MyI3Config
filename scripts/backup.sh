sudo rsync -aAXv --progress \
  --exclude={"/usr/lib/*","*/node_modules/*","/home/*/Downloads/ffsrc/*","/home/*/.npm/*","/home/*/.m2/*","/home/*/.config/chromium/","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","*/caches/*","*/cache/*","*/Cache/*","*/.cache*","*/ShaderCache/*","/home/*cache*","/home/*/.thumbnails/*","/home/*/.local/share/Trash/*","/home/*/.thumbnails/*"} \
  / /mnt/disk/
