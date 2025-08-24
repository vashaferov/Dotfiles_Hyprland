#!/bin/bash

# Переключение состояния микрофона
pactl set-source-mute @DEFAULT_SOURCE@ toggle

# Получить состояние mute микрофона
mic_status=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

# Определить текст уведомления
if [ "$mic_status" = "да" ] || [ "$mic_status" = "yes" ]; then
    notify-send "Microphone Muted" "Microphone turned off" -i microphone-disabled-symbolic
else
    notify-send "Microphone Unmuted" "Microphone turned on" -i microphone-sensitivity-high-symbolic
fi