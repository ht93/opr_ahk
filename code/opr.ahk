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
    global flagOPR, offsetLR, offsetUD
    if flagOPR{
        flagOPR := 0
        Return
    } else {
        InputBox, offsetLR, Left & Right offset, Please enter Left or Right offset (Left negative Right positive Like -50 or 100),,,,,,,,0
        InputBox, offsetUD, UP & Down offset, Please enter UP or Down offset (UP negative Down positive Like -50 or 100),,,,,,,,0
        flagOPR := 1
    }
}

opr1star(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, offsetLR + 505, starY + offsetUD
    Random, timeWait, 800, 850
    Sleep, %timeWait%
    MouseClick, left, 1010, 290
    Random, timeWait, 800, 850
    Sleep, %timeWait%
    MouseClick, left, 1010, 290
}

oprDuplicate(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, 1010, 290
    Random, timeWait, 800, 850
    Sleep, %timeWait%
    MouseClick, left, 1010, 290
}

opr2star_1(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, 545 + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1365 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1325 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1325 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 680 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 720 + offsetLR, 755 + offsetUD
}

opr2star_2(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, 545 + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1365 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1365 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 600 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 680 + offsetLR, 755 + offsetUD
}

opr3star_1(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, 585 + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1365 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1365 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 680 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 720 + offsetLR, 755 + offsetUD
}

opr3star_2(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, 585 + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 640 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 720 + offsetLR, 755 + offsetUD
}

opr4star_1(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, 625 + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 720 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 760 + offsetLR, 755 + offsetUD
}

opr4star_2(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, 625 + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 680 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 720 + offsetLR, 755 + offsetUD
}

opr5star_1(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, starX + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 720 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 760 + offsetLR, 755 + offsetUD
}

opr5star_2(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, starX + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1405 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 720 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 760 + offsetLR, 755 + offsetUD
}

opr5star_3(){
    global flagOPR, offsetLR, offsetUD
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
    MouseClick, left, starX + offsetLR, starY + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 170 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 220 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 1445 + offsetLR, 280 + offsetUD
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 760 + offsetLR, 670 + offsetUD
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    MouseClick, left, 760 + offsetLR, 755 + offsetUD
}

oprSubmit(){
    global flagOPR, offsetLR, offsetUD
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    MouseClick, left, 980, 880
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    MouseClick, left, 1000, 300
}

getLocation(ByRef OutputVarX, ByRef OutputVarY){
    IfNotExist, save.bmp
        MsgBox Error: Your file either doesn't exist or isn't in this location.
    ImageSearch, OutputVarX, OutputVarY, 640, 260, 690, 640, *100 save.bmp
    OutputVarX := OutputVarX + 15
    OutputVarY := OutputVarY + 10
}

getDuplicateLocation(ByRef OutputVarX, ByRef OutputVarY){
    IfNotExist, dup.png
        MsgBox Error: Your file either doesn't exist or isn't in this location.
    ImageSearch, OutputVarX, OutputVarY, 970, 500, 1575, 900, *100 dup.png
    OutputVarX := OutputVarX + 15
    OutputVarY := OutputVarY + 10
}
