#!/bin/bash

echo "Copying files..."

# Pause Variety (inconsistent)
# cp ./FrameNapTime-User.service ./FrameNapTime-User.timer ~/.config/systemd/user/

# Resume Variety (inconsistent)
# cp ./FrameWakeup.service ./FrameWakeup.timer ~/.config/systemd/user/

# Pause & Resume Variety
cp ./naptime.sh /lib/systemd/system-sleep/

# Sleep Executer
sudo cp ./FrameNapTime.service ./FrameNapTime.timer /etc/systemd/system/

echo "Enabling timer services..."

# Pause Variety
# systemctl --user enable FrameNapTime-User.timer && systemctl --user start FrameNapTime-User.timer

# Resume Variety
# systemctl --user enable FrameWakeup.timer && systemctl --user start FrameWakeup.timer

# Sleep Executer
sudo systemctl enable FrameNapTime.timer && sudo systemctl start FrameNapTime.timer

echo "Done."
