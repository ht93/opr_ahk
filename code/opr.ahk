flagOPR := 0

^+o::setup()

^+p::MsgBox, 0, info,   
( LTrim
    flagOPR is a %flagOPR%
    =====================================================
    User Manual:
    Ctrl+Shift+O: enable or disable the whole function
    Ctrl+Shift+P: User manual and current state
    z: 1 star
    a: duplicate (left click on the duplicated picture by yourself)
    x: 2 star (not very good)
    s: 2 star (ordinary and bad location)
    c: 3 star (overall not very good and not very bad)
    d: 3 star (very good but not correct location by street view)
    v: 4 star (good but not perfect)
    f: 4 star (very good but indoor position)
    b: 5 star (very good with visual 5* culture 4* position 4*)
    g: 5 star (very good with visual 4* culture 5* position 4*)
    t: 5 star (very good with visual 5* culture 5* position 5*)
    Space: submit
    esc: stop the script
)

z::opr1star()

a::oprDuplicate()

x::opr2star_1()

s::opr2star_2()

c::opr3star_1()

d::opr3star_2()

v::opr4star_1()

f::opr4star_2()

b::opr5star_1()

g::opr5star_2()

t::opr5star_3()

Space::oprSubmit()

esc::exitapp

setup(){
    global flagOPR
    if flagOPR{
        flagOPR := 0
        Return
    } else {
        setupGUI()
        flagOPR := 1
    }
}

setupGUI(){
    global starW, starH, distance, submitX, submitY, confirmX, confirmY
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y
    global starSearch1X, starSearch1Y, starSearch2X, starSearch2Y
    global dupSearch1X, dupSearch1Y, dupSearch2X, dupSearch2Y

    Array := Object()

    ; Write to the array:
    Loop, Read, coor.txt ; This loop retrieves each line from the file, one at a time.
    {
        Array.Insert(A_LoopReadLine) ; Append this line to the array.
    }

    Gui, New
    Gui, Add, Text,, Star width (all in pixel)
    Gui, Add, Edit, Number vstarW
    GuiControl,, starW, % Array[1]
    Gui, Add, Text,, Star height
    Gui, Add, Edit, Number vstarH
    GuiControl,, starH, % Array[2]
    Gui, Add, Text,, Distance between center of two adjacent star
    Gui, Add, Edit, Number vdistance
    GuiControl,, distance, % Array[3]
    Gui, Add, Text,, X coordinate for center of "Submit" button (all coordinate in Relative mode, "center" is the place to click)
    Gui, Add, Edit, Number vsubmitX
    GuiControl,, submitX, % Array[4]
    Gui, Add, Text,, Y coordinate for center of "Submit" button
    Gui, Add, Edit, Number vsubmitY
    GuiControl,, submitY, % Array[5]
    Gui, Add, Text,, X coordinate for center of "Analyze Next" button (also for "submit" button around the same place)
    Gui, Add, Edit, Number vconfirmX
    GuiControl,, confirmX, % Array[6]
    Gui, Add, Text,, Y coordinate for center of "Analyze Next" button (also for "submit" button around the same place)
    Gui, Add, Edit, Number vconfirmY
    GuiControl,, confirmY, % Array[7]
    Gui, Add, Text,, X coordinate for center of 5 star of "Is the title accurate?"
    Gui, Add, Edit, Number vmark2X
    GuiControl,, mark2X, % Array[8]
    Gui, Add, Text,, Y coordinate for center of 5 star of "Is the title accurate?"
    Gui, Add, Edit, Number vmark2Y
    GuiControl,, mark2Y, % Array[9]
    Gui, Add, Text,, Y coordinate for center of 5 star of "Is it historically or culturally significant?"
    Gui, Add, Edit, Number vmark3Y
    GuiControl,, mark3Y, % Array[10]
    Gui, Add, Text,, Y coordinate for center of 5 star of "Is it visually unique?"
    Gui, Add, Edit, Number vmark4Y
    GuiControl,, mark4Y, % Array[11]
    Gui, Add, Text,, X coordinate for center of 5 star of "Is the location accurate?"
    Gui, Add, Edit, Number vmark5X
    GuiControl,, mark5X, % Array[12]
    Gui, Add, Text,, Y coordinate for center of 5 star of "Is the location accurate?"
    Gui, Add, Edit, Number vmark5Y
    GuiControl,, mark5Y, % Array[13]
    Gui, Add, Text,, Y coordinate for center of 5 star of "Can it be safely accessed?"
    Gui, Add, Edit, Number vmark6Y
    GuiControl,, mark6Y, % Array[14]
    Gui, Add, Button, Default gNext, Next
    Gui, Show

    Gui, 2: New
    Gui, 2: Add, Text,, X coordinate for upper left point for searching "Should this be a portal?" 5 star
    Gui, 2: Add, Edit, Number vstarSearch1X
    GuiControl,, starSearch1X, % Array[15]
    Gui, 2: Add, Text,, Y coordinate for upper left point for searching "Should this be a portal?" 5 star
    Gui, 2: Add, Edit, Number vstarSearch1Y
    GuiControl,, starSearch1Y, % Array[16]
    Gui, 2: Add, Text,, X coordinate for lower right point for searching "Should this be a portal?" 5 star
    Gui, 2: Add, Edit, Number vstarSearch2X
    GuiControl,, starSearch2X, % Array[17]
    Gui, 2: Add, Text,, Y coordinate for lower right point for searching "Should this be a portal?" 5 star
    Gui, 2: Add, Edit, Number vstarSearch2Y
    GuiControl,, starSearch2Y, % Array[18]
    Gui, 2: Add, Text,, X coordinate for upper left point for searching "Mark as duplicate."
    Gui, 2: Add, Edit, Number vdupSearch1X
    GuiControl,, dupSearch1X, % Array[19]
    Gui, 2: Add, Text,, Y coordinate for upper left point for searching "Mark as duplicate."
    Gui, 2: Add, Edit, Number vdupSearch1Y
    GuiControl,, dupSearch1Y, % Array[20]
    Gui, 2: Add, Text,, X coordinate for lower right point for searching "Mark as duplicate."
    Gui, 2: Add, Edit, Number vdupSearch2X
    GuiControl,, dupSearch2X, % Array[21]
    Gui, 2: Add, Text,, Y coordinate for lower right point for searching "Mark as duplicate."
    Gui, 2: Add, Edit, Number vdupSearch2Y
    GuiControl,, dupSearch2Y, % Array[22]
    Gui, 2: Add, Button, Default gDone, Done
    
    return

    Next:
    Gui, Submit
    Gui, Destroy
    Gui, 2: Show
    return    
    
    Done:
    Gui, 2: Submit
    Gui, 2: Destroy
    FileDelete, coor.txt
    Array := [starW, starH, distance, submitX, submitY, confirmX, confirmY, mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, starSearch1X, starSearch1Y, starSearch2X, starSearch2Y, dupSearch1X, dupSearch1Y, dupSearch2X, dupSearch2Y]
    Sleep, 1000
    for index, element in Array ; Recommended approach in most cases.
    {
        FileAppend, %element%`n, coor.txt
    }
    return
}

opr1star(){
    global flagOPR
    global distance, confirmX, confirmY
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, % starX - distance * 4, starY
    Random, timeWait, 800, 850
    Sleep, %timeWait%
    MouseClick, left, confirmX, confirmY
    Random, timeWait, 800, 850
    Sleep, %timeWait%
    MouseClick, left, confirmX, confirmY
}

oprDuplicate(){
    global flagOPR
    global confirmX, confirmY
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getDuplicateLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the "Mark as Duplicate".
        return
    }
    MouseClick, left, starX, starY
    Random, timeWait, 800, 850
    Sleep, %timeWait%
    MouseClick, left, confirmX, confirmY
    Random, timeWait, 800, 850
    Sleep, %timeWait%
    MouseClick, left, confirmX, confirmY
}

opr2star_1(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, % starX - distance * 3, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 2, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 3, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 3, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 2, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 1, mark6Y
}

opr2star_2(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, % starX - distance * 3, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 2, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 2, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 4, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 2, mark6Y
}

opr3star_1(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, % starX - distance * 2, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 2, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 2, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 2, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 1, mark6Y
}

opr3star_2(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, % starX - distance * 2, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 3, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 1, mark6Y
}

opr4star_1(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, % starX - distance * 1, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 1, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark5X, mark6Y
}

opr4star_2(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, % starX - distance * 1, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 2, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 1, mark6Y
}

opr5star_1(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, starX, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 1, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark5X, mark6Y
}

opr5star_2(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, starX, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, % mark2X - distance * 1, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, % mark5X - distance * 1, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark5X, mark6Y
}

opr5star_3(){
    global flagOPR
    global mark2X, mark2Y, mark3Y, mark4Y, mark5X, mark5Y, mark6Y, distance
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    MouseClick, left, starX, starY
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark2Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark3Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark2X, mark4Y
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, mark5X, mark5Y
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, mark5X, mark6Y
}

oprSubmit(){
    global submitX, submitY, confirmX, confirmY
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    MouseClick, left, submitX, submitY
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, confirmX, confirmY
}

getLocation(ByRef OutputVarX, ByRef OutputVarY){
    global starSearch1X, starSearch1Y, starSearch2X, starSearch2Y
    global starW, starH
    IfNotExist, save.bmp
        MsgBox Error: Your file either doesn't exist or isn't in this location.
    ImageSearch, OutputVarX, OutputVarY, starSearch1X, starSearch1Y, starSearch2X, starSearch2Y, *100 save.bmp
    OutputVarX := Floor(OutputVarX + starW / 2)
    OutputVarY := Floor(OutputVarY + starH / 2)
}

getDuplicateLocation(ByRef OutputVarX, ByRef OutputVarY){
    global dupSearch1X, dupSearch1Y, dupSearch2X, dupSearch2Y
    IfNotExist, dup.png
        MsgBox Error: Your file either doesn't exist or isn't in this location.
    ImageSearch, OutputVarX, OutputVarY, dupSearch1X, dupSearch1Y, dupSearch2X, dupSearch2Y, *100 dup.png
    OutputVarX := OutputVarX + 15
    OutputVarY := OutputVarY + 10
}
