echo "Current inotify watch"
cat /proc/sys/fs/inotify/max_user_watches

echo 524288 | sudo tee -a /proc/sys/fs/inotify/max_user_watches
