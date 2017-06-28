# User Manual

### Pre
1. Please copy `opr.exe`, `windowspy.exe`, `dup.png`, `coor.txt` and `save.bmp` to a new directory and open `opr.exe`.
2. The `coor.txt` is fit to my setup (**Chrome**\\**1920x1080**\\Windows `scale and layout` with `100%`). Even the same setup does not mean it would work. Please capture your own `dup.png` and `save.bmp` and adjust the setting to fit your own setup by `Ctrl+Shift+o`.
3. To adjust the coordinate, please use the `windowspy.exe` and use the Relative mode for coordinate update. Please make sure that you have selected your web browser.
4. Once you have your own coordinate `coor.txt` with `Ctrl+Shift+o`, please make a copy of the it (like `coor_backup.txt` in same directory). The program caused some number missing during some of my test run. In this case, your backup will be useful.

### Control
- `Ctrl+Shift+o`: set up the coordinate (automatically update the `coor.txt`), and enable or disable the whole function
- `Ctrl+Shift+p`: User manual and current state
- `z`: 1 star
- `a`: duplicate (left click on the duplicated picture by yourself)
- `x`: 2 star (not very good)
- `s`: 2 star (ordinary and bad location)
- `c`: 3 star (overall not very good and not very bad)
- `d`: 3 star (very good but not correct location by street view)
- `v`: 4 star (good but not perfect)
- `f`: 4 star (very good but indoor position)
- `b`: 5 star (very good with visual 5* culture 4* position 4*)
- `g`: 5 star (very good with visual 4* culture 5* position 4*)
- `t`: 5 star (perfect with visual 5* culture 5* position 5*)
- `Space`: submit
- `esc`: stop the script

### Setting (based on my setup)
All in pixel, all coordinate in Relative mode, "center" is the place to click
- `30`: Star width
- `26`: Star height
- `40`: Distance between center of two adjacent star
- `980`: X coordinate for center of "Submit" button
- `880`: Y coordinate for center of "Submit" button
- `1000`: X coordinate for center of "Analyze Next" button (also for "submit" button around the same place)
- `300`: Y coordinate for center of "Analyze Next" button (also for "submit" button around the same place)
- `1445`: X coordinate for center of 5 star of "Is the title accurate?"
- `170`: Y coordinate for center of 5 star of "Is the title accurate?"
- `220`: Y coordinate for center of 5 star of "Is it historically or culturally significant?"
- `280`: Y coordinate for center of 5 star of "Is it visually unique?"
- `760`: X coordinate for center of 5 star of "Is the location accurate?"
- `670`: Y coordinate for center of 5 star of "Is the location accurate?"
- `755`: Y coordinate for center of 5 star of "Can it be safely accessed?"
- `640`: X coordinate for upper left point for searching "Should this be a portal?" 5 star
- `260`: Y coordinate for upper left point for searching "Should this be a portal?" 5 star
- `690`: X coordinate for lower right point for searching "Should this be a portal?" 5 star
- `640`: Y coordinate for lower right point for searching "Should this be a portal?" 5 star
- `970`: X coordinate for upper left point for searching "Mark as duplicate."
- `500`: Y coordinate for upper left point for searching "Mark as duplicate."
- `1575`: X coordinate for lower right point for searching "Mark as duplicate."
- `900`: Y coordinate for lower right point for searching "Mark as duplicate."
