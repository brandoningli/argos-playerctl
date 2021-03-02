# argos-playerctl
An Argos script to display now playing information.

## Prerequisites

+ [`playerctl`](https://github.com/altdesktop/playerctl)
  + On Ubuntu and derivatives: `sudo apt install playerctl`
+ [Argos](https://github.com/p-e-w/argos)
  + On GNOME 3.36, use [the gnome-3.36 branch of this fork](https://github.com/rammie/argos/tree/gnome-3.36) instead of the extensions.gnome.org version at the time of commit.

## Usage

1. Save the script to `~/.config/argos` following the naming conventions in the Argos README.
2. Set `${PLAYER}` by running `playerctl metadata` and filling in the text from the beginning to the first space.
  + If you'd rather use any player instead of one specifically, set `${USEANYPLAYER}` to `true`
3. Set `${ICON}` to the icon name of your choice.
