#!/bin/bash

echo "Copying files..."
cp ./FrameNapTime-User.service ./FrameNapTime-User.timer ~/.config/systemd/user/
cp ./FrameWakeup.service ./FrameWakeup.timer ~/.config/systemd/user/
sudo cp ./FrameNapTime.service ./FrameNapTime.timer /etc/systemd/system/
echo "Enabling timer services..."
systemctl --user enable FrameNapTime-User.timer && systemctl --user start FrameNapTime-User.timer
systemctl --user enable FrameWakeup.timer && systemctl --user start FrameWakeup.timer
sudo systemctl enable FrameNapTime.timer && sudo systemctl start FrameNapTime.timer
echo "Done."
