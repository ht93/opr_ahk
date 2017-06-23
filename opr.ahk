flagOPR := 0

^+o::flagOPR := !flagOPR

^+p::MsgBox, 0, info,   
( LTrim
    flagOPR is a %flagOPR%
    =====================================================
    User Manual:
    Ctrl+Shift+O: enable or disable the whole function
    Ctrl+Shift+P: User manual and current state
    z: 1 star
    x: 2 star (not very good and bad location)
    c: 3 star (overall not very good and very bad)
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

x::opr2star()

c::opr3star_1()

d::opr3star_2()

v::opr4star_1()

f::opr4star_2()

b::opr5star_1()

g::opr5star_2()

t::opr5star_3()

Space::oprSubmit()

esc::exitapp

opr1star(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click 505, %starY%
    Random, timeWait, 500, 550
    Sleep, %timeWait%
    Click 1010, 290
    Random, timeWait, 500, 550
    Sleep, %timeWait%
    Click 1010, 290
}

opr2star(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click 545, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1365, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1365, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 600, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 680, 755
}

opr3star_1(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click 585, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1365, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1365, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 680, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 720, 755
}

opr3star_2(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click 585, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 640, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 720, 755
}

opr4star_1(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click 625, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 720, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 760, 755
}

opr4star_2(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click 625, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 680, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 720, 755
}

opr5star_1(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click %starX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 720, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 760, 755
}

opr5star_2(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click %starX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1405, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 720, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 760, 755
}

opr5star_3(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    getLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click %starX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 170
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 220
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 1445, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 760, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 760, 755
}

oprSubmit(){
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  flagOPR is not set yet.
        return
    }
    Click 980, 880
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 1000, 300
}

getLocation(ByRef OutputVarX, ByRef OutputVarY){
    IfNotExist, save.bmp
        MsgBox Error: Your file either doesn't exist or isn't in this location.
    ImageSearch, OutputVarX, OutputVarY, 640, 360, 690, 640, save.bmp
    OutputVarX := OutputVarX + 15
    OutputVarY := OutputVarY + 10
}

domino66Click(Interval=100){

   static Toggler

   Toggler := !Toggler

   TPer := Toggler ? Interval : "off"

   SetTimer, ClickClick, %TPer%

   return

   ClickClick:

   Click

   return

}
