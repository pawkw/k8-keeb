# k8-keeb
Design files for an eight key keyboard.

# Desgin files

The design files directory contains Lua and STL files for 3d printing. The Lua files are used to generate the STL files using (Icesl)[https://icesl.loria.fr/].


# Firmware

The firmware directory contains files used with QMK to make the firmware for the keyboard. There is a macropad firmware and a PaintBrush style firmware.

# Links

- Icesl: https://icesl.loria.fr/
- QMK: https://qmk.fm/
- Keyboard layout editor: http://www.keyboard-layout-editor.com/
- KBFirmware: https://kbfirmware.com/
- Paintbrush: https://github.com/arduxio/thepaintbrush

# Wiring

The controller is a Arduino Pro Micro which uses a ATMega32U4. The keyboard is hand soldered and wired as follows:

| Row | Pin |
| --- | --- |
| 0   | b4  |
| 1   | b5  |

| Col | Pin |
| --- | --- |
| 0   | b1  |
| 1   | b3  |
| 2   | b2  |
| 3   | b6  |

