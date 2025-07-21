if test (tty) = "/dev/tty1"
    set -x XDG_CURRENT_DESKTOP Hyprland
    set -x XDG_SESSION_TYPE wayland
    set -x XDG_SESSION_DESKTOP Hyprland
    set -x QT_QPA_PLATFORM wayland
    set -x QT_WAYLAND_DISABLE_WINDOWDECORATION 1
    set -x GDK_BACKEND wayland
    set -x CLUTTER_BACKEND wayland
    set -x SDL_VIDEODRIVER wayland
    set -x MOZ_ENABLE_WAYLAND 1
    exec Hyprland
end

if test (tty) = "/dev/tty3"
    if not set -q WAYLAND_DISPLAY
        exec sway
    end
end
