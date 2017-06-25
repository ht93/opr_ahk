flagOPR := 0

^+o::startup()

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

startup(){
    global flagOPR, chromeW, chromeH, starW, starH, distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global confirmW, confirmH, submitW, submitH
    if flagOPR {
        flagOPR := 0
        return
    } else {
        WinGetPos, chromeX, chromeY, chromeW, chromeH, A
        imagefile := "star.png"
        getImageInfo(imagefile, starW, starH)
        if starW is not integer 
        {
            MsgBox, 0, Warning,  Cannot read star dimension.
            return
        }

        imagefile := "stars.png"
        getImageInfo(imagefile, starsW, starsH)
        if starsW is not integer 
        {
            MsgBox, 0, Warning,  Cannot read stars dimension.
            return
        }

        distance := Floor((starsW - starW) / 4)

        imagefile := "mark1.png"
        findMarkPosition(imagefile, Mark1W, Mark1H)
        if Mark1W is not integer
        {
            MsgBox, 0, Warning,  Cannot get Mark1 position, type 1.
            return
        }
        if Mark1W = 0
        {
            MsgBox, 0, Warning,  Cannot get Mark1 position, type 2.
            return
        }

        clickX := Floor(Mark1W - 4 * distance)
        Click %clickX%, %Mark1H%
        Random, timeWait, 500, 550
        Sleep, %timeWait%

        imagefile := "confirm.png"
        findConfirmPosition(imagefile, confirmW, confirmH)
        MsgBox confirm: The width is %confirmW%. The height is %confirmH%.
        if confirmW is not integer
        {
            MsgBox, 0, Warning,  Cannot get confirm position, type 1.
            return
        }
        if confirmW = 0
        {
            MsgBox, 0, Warning,  Cannot get confirm position, type 2.
            return
        }


        imagefile := "mark2.png"
        findMarkPosition(imagefile, Mark2W, Mark2H)
        MsgBox Mark2: The width is %Mark2W%. The height is %Mark2H%.
        if Mark2W is not integer
        {
            MsgBox, 0, Warning,  Cannot get Mark2 position, type 1.
            return
        }
        if Mark2W = 0
        {
            MsgBox, 0, Warning,  Cannot get Mark2 position, type 2.
            return
        }

        imagefile := "mark3.png"
        findMarkPosition(imagefile, Mark3W, Mark3H)
        MsgBox Mark3: The width is %Mark3W%. The height is %Mark3H%.
        if Mark3W is not integer
        {
            MsgBox, 0, Warning,  Cannot get Mark3 position, type 1.
            return
        }
        if Mark3W = 0
        {
            MsgBox, 0, Warning,  Cannot get Mark3 position, type 2.
            return
        }

        imagefile := "mark4.png"
        findMarkPosition(imagefile, Mark4W, Mark4H)
        MsgBox Mark4: The width is %Mark4W%. The height is %Mark4H%.
        if Mark4W is not integer
        {
            MsgBox, 0, Warning,  Cannot get Mark4 position, type 1.
            return
        }
        if Mark4W = 0
        {
            MsgBox, 0, Warning,  Cannot get Mark4 position, type 2.
            return
        }

        clickX := Floor(Mark4W - 4 * distance)
        Click %clickX%, %Mark4H%
        Random, timeWait, 1000, 1200
        Sleep, %timeWait%

        imagefile := "mark5.png"
        findMarkPosition(imagefile, Mark5W, Mark5H)
        MsgBox Mark5: The width is %Mark5W%. The height is %Mark5H%.
        if Mark5W is not integer
        {
            MsgBox, 0, Warning,  Cannot get Mark5 position, type 1.
            return
        }
        if Mark5W = 0
        {
            MsgBox, 0, Warning,  Cannot get Mark5 position, type 2.
            return
        }

        imagefile := "mark6.png"
        findMarkPosition(imagefile, Mark6W, Mark6H)
        MsgBox Mark6: The width is %Mark6W%. The height is %Mark6H%.
        if Mark6W is not integer
        {
            MsgBox, 0, Warning,  Cannot get Mark6 position, type 1.
            return
        }
        if Mark6W = 0
        {
            MsgBox, 0, Warning,  Cannot get Mark6 position, type 2.
            return
        }

        imagefile := "submit.png"
        findMarkPosition(imagefile, submitW, submitH)
        MsgBox submit: The width is %submitW%. The height is %submitH%.
        if submitW is not integer
        {
            MsgBox, 0, Warning,  Cannot get submit position, type 1.
            return
        }
        if submitW = 0
        {
            MsgBox, 0, Warning,  Cannot get submit position, type 2.
            return
        }

        flagOPR := 1
    }
}

opr1star(){
    global Mark1W, Mark1H, distance, confirmW, confirmH 
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    clickX := Floor(Mark1W - 4 * distance)
    Click %clickX%, %starY%
    Random, timeWait, 500, 550
    Sleep, %timeWait%
    Click %confirmW%, %confirmH%
    Random, timeWait, 500, 550
    Sleep, %timeWait%
    Click %confirmW%, %confirmH%
}

oprDuplicate(){
    global confirmW, confirmH
    global flagOPR
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
    Click %starX%, %starY%
    Random, timeWait, 500, 550
    Sleep, %timeWait%
    Click %confirmW%, %confirmH%
    Random, timeWait, 500, 550
    Sleep, %timeWait%
    Click %confirmW%, %confirmH%
}

opr2star_1(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H 
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    clickX := Floor(Mark1W - 3 * distance)
    Click %clickX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark2W - 2 * distance)
    Click %clickX%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark3W - 3 * distance)
    Click %clickX%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark4W - 3 * distance)
    Click %clickX%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 2 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark6W - 1 * distance)
    Click %clickX%, %Mark6H%
}

opr2star_2(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    clickX := Floor(Mark1W - 3 * distance)
    Click %clickX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark2W - 1 * distance)
    Click %clickX%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark3W - 2 * distance)
    Click %clickX%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark4W - 2 * distance)
    Click %clickX%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 4 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark6W - 2 * distance)
    Click %clickX%, %Mark6H%
}

opr3star_1(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    clickX := Floor(Mark1W - 2 * distance)
    Click %clickX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark2W - 1 * distance)
    Click %clickX%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark3W - 2 * distance)
    Click %clickX%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark4W - 2 * distance)
    Click %clickX%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 1 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark6W - 1 * distance)
    Click %clickX%, %Mark6H%
}

opr3star_2(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    clickX := Floor(Mark1W - 2 * distance)
    Click %clickX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark2W%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark3W - 1 * distance)
    Click %clickX%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark4W%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 3 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark6W - 1 * distance)
    Click %clickX%, %Mark6H%
}

opr4star_1(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    clickX := Floor(Mark1W - 1 * distance)
    Click %clickX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark2W%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark3W - 1 * distance)
    Click %clickX%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark4W - 1 * distance)
    Click %clickX%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 1 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark6W%, %Mark6H%
}

opr4star_2(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    clickX := Floor(Mark1W - 1 * distance)
    Click %clickX%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark2W%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark3W - 1 * distance)
    Click %clickX%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark4W%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 2 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark6W - 1 * distance)
    Click %clickX%, %Mark6H%
}

opr5star_1(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click %Mark1W%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark2W%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark3W - 1 * distance)
    Click %clickX%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark4W%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 1 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark6W%, %Mark6H%
}

opr5star_2(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click %Mark1W%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark2W%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark3W%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    clickX := Floor(Mark4W - 1 * distance)
    Click %clickX%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    clickX := Floor(Mark5W - 1 * distance)
    Click %clickX%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark6W%, %Mark6H%
}

opr5star_3(){
    global distance
    global Mark1W, Mark1H, Mark2W, Mark2H, Mark3W, Mark3H, Mark4W, Mark4H, Mark5W, Mark5H, Mark6W, Mark6H
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    getStarLocation(starX, starY)
    if starX is not integer 
    {
        MsgBox, 0, Warning,  Cannot find the star.
        return
    }
    Click %Mark1W%, %starY%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark2W%, %Mark2H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark3W%, %Mark3H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark4W%, %Mark4H%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click %Mark5W%, %Mark5H%
    Random, timeWait, 100, 150
    Sleep, %timeWait%
    Click %Mark6W%, %Mark6H%
}

oprSubmit(){
    global confirmW, confirmH, submitW, submitH
    global flagOPR
    if !flagOPR {
        MsgBox, 0, Warning,  OPR AHK function is not enabled yet.
        return
    }
    Click %submitW%, %submitH%
    Random, timeWait, 1000, 1200
    Sleep, %timeWait%
    Click %confirmW%, %confirmH%
}

getStarLocation(ByRef OutputVarX, ByRef OutputVarY){
    global Mark1W, Mark1H, distance, starW, starH
    startX := Floor(Mark1W - distance / 2)
    endX := Floor(Mark1W + distance / 2)
    startY := Floor(Mark1H - 200)
    endY := Floor(Mark1H + 200)
    IfNotExist, star.png
        MsgBox Error: Your file "star.png" either doesn't exist or isn't in this location.
    ImageSearch, OutputVarX, OutputVarY, startX, startY, endX, endY, star.png
    OutputVarX := Floor(OutputVarX + starW / 2)
    OutputVarY := Floor(OutputVarY + starH / 2)
}

getDuplicateLocation(ByRef OutputVarX, ByRef OutputVarY){
    global chromeW, chromeH
    IfNotExist, dup.png
        MsgBox Error: Your file either doesn't exist or isn't in this location.
    ImageSearch, OutputVarX, OutputVarY, 0, 0, chromeW, chromeH, dup.png
    OutputVarX := OutputVarX + 15
    OutputVarY := OutputVarY + 10
}

findMarkPosition(imagefile, ByRef MarkW, ByRef MarkH){
    global starW, starH

    getImageLocation(imagefile, X, Y)
    getImageInfo(imagefile, W, H)

    if X is not integer
    {
        MsgBox %X%, %Y%, %W%, %H%
        MsgBox, 0, Warning,  Cannot find the "%imagefile%" in current window.
        return
    }

    MarkW := Floor(X + W - starW / 2)
    MarkH := Floor(Y + H - starH / 2)
}

findConfirmPosition(imagefile, ByRef confirmW, ByRef confirmH){
    getImageLocation(imagefile, X, Y)
    getImageInfo(imagefile, W, H)

    if X is not integer
    {
        MsgBox %X%, %Y%, %W%, %H%
        MsgBox, 0, Warning,  Cannot find the "%imagefile%" in current window.
        return
    }

    confirmW := Floor(X + 10)
    confirmH := Floor(Y + 10)

    Click %confirmW%, %confirmH%
    Random, timeWait, 500, 550
    Sleep, %timeWait%

    confirmW := Floor(X + W - 10)
    confirmH := Floor(Y + H - 10)
}

getImageLocation(imagefile, ByRef OutputVarX, ByRef OutputVarY){
    global chromeW, chromeH
    IfNotExist, %imagefile%
    {
        MsgBox Error: Your file "%imagefile%" either doesn't exist or isn't in this location.
        Return
    }
    ImageSearch, OutputVarX, OutputVarY, 0, 0, chromeW, chromeH, *150 %imagefile%
}

getImageInfo(imagefile, ByRef mypicW, ByRef mypicH){
    global
    local x, y
    IfNotExist, %imagefile%
    {
        MsgBox Error: Your file "%imagefile%" either doesn't exist or isn't in this location.
        Return
    }

    Gui, Add, Picture, vpicture hwndMyPic, %imagefile%
    ControlGetPos, x, y, mypicW, mypicH, , ahk_id %MyPic%
    Gui, Destroy
}