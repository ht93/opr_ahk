# User Manual

### Pre
0. This code is for Windows PC.
1. Copy `opr.exe`, `windowspy.exe`, `coor.txt`, `coor_backup.txt`, `dup.png` and `star.png` in root folder to a new directory.
2. In your own OPR Portal Analysis page, screen shot one of the **star** and **Mark as duplicate** button. After screen shot, use software **Paint** pre-installed in Windows or use any software you like to cut out the black edge of them. Make sure your outcome is similar to the provided `dup.png` and `star.png`. Then save them as `star.png` & `dup.png` and replace the existing one.
3. Open `opr.exe`, enable function by `Ctrl+Shift+o`, try some rating function to checkout the basic mechanism in [Control](#control). (This step may not working since you may need your own `coor.txt`. If any warning happens, just ignore this step)
4. Open the `coor.txt` and `windowspy.exe`, use the `windowspy.exe` to make your own `coor.txt` according to [Setting](#setting).
5. Once you made your own coordinate `coor.txt`, make a copy of the it (like `coor_backup.txt` in same directory). The program caused some number missing during some of my test run. In this case, your backup will be useful.
6. Open `opr.exe` and enable function by `Ctrl+Shift+o`, then you can start your OPR.

p.s. The `template` folder are some template for `coor.txt` that I tested.

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

### Setting 
**(number based on my personal setup)** 

All in pixel, all coordinate in Relative mode. "center" is just for the place to click, may not be exactly center of the star or button.
- `30`: star.png width
- `26`: star.png height
- `40`: Distance between center of two adjacent star
- `980`: X coordinate for center of "Submit" button (coordinate when scrollbar at the bottom)
- `880`: Y coordinate for center of "Submit" button (coordinate when scrollbar at the bottom)
- `1000`: X coordinate for center of "Analyze Next" button (also for "submit" button around the same place)
- `300`: Y coordinate for center of "Analyze Next" button (also for "submit" button around the same place)
- `1445`: X coordinate for center of 5 star of "Is the title accurate?"
- `170`: Y coordinate for center of 5 star of "Is the title accurate?"
- `220`: Y coordinate for center of 5 star of "Is it historically or culturally significant?"
- `280`: Y coordinate for center of 5 star of "Is it visually unique?"
- `760`: X coordinate for center of 5 star of "Is the location accurate?" (coordinate when scrollbar at the bottom)
- `670`: Y coordinate for center of 5 star of "Is the location accurate?" (coordinate when scrollbar at the bottom)
- `755`: Y coordinate for center of 5 star of "Can it be safely accessed?" (coordinate when scrollbar at the bottom)
- `640`: X coordinate for upper left point for searching "Should this be a portal?" 5 star
- `260`: Y coordinate for upper left point for searching "Should this be a portal?" 5 star
- `690`: X coordinate for lower right point for searching "Should this be a portal?" 5 star
- `640`: Y coordinate for lower right point for searching "Should this be a portal?" 5 star
- `970`: X coordinate for upper left point for searching "Mark as duplicate."
- `500`: Y coordinate for upper left point for searching "Mark as duplicate."
- `1575`: X coordinate for lower right point for searching "Mark as duplicate."
- `900`: Y coordinate for lower right point for searching "Mark as duplicate."
