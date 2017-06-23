flagOPR := 0

^+o::flagOPR := !flagOPR

^+p::MsgBox, 0, info,   
( LTrim
    flagOPR is a %flagOPR%
    test line2
    test line3
    test line4
    test line5
    test line6
    test line7
)

z::opr1star()

x::opr2star()

c::opr3star()

v::opr4star()

b::opr5star()

!Space::oprSubmit()

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
    Click 1405, 280
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click 600, 670
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click 680, 755
}

opr3star(){
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

opr4star(){
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

opr5star(){
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
