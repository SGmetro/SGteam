﻿; your config
x:=0 ; Height Offset
y:=0 ; Width Offset
z:=0 ; Alignment Offset, should be bigger than Height Offset
nm_cameraRotation("up", 4), Sleep(50)
nm_Walk(7+x, RightKey, BackKey)
nm_Walk(1.75+y, LeftKey, BackKey)
nm_Walk(7+x, FwdKey, LeftKey)
nm_Walk(1.75+y, LeftKey, BackKey)
nm_Walk(8+z, BackKey, RightKey)
nm_Walk(1, FwdKey)
nm_Walk(1.75+y, LeftKey, BackKey)
nm_Walk(6+x, FwdKey, LeftKey)
nm_Walk(1.75+y, LeftKey, BackKey)

nm_cameraRotation("left", 1)
nm_Walk(6+x, BackKey)
nm_Walk(1.75+y, RightKey)
nm_Walk(6+x, FwdKey)
nm_Walk(1.75+y, RightKey)
nm_Walk(6+x, BackKey)
nm_Walk(1.75+y, RightKey)
nm_Walk(6+x, FwdKey)
nm_Walk(2+y, RightKey)

nm_cameraRotation("left", 1)
nm_Walk(7+z, LeftKey, BackKey)
nm_Walk(1.75+y, LeftKey, FwdKey)
nm_Walk(6+z, FwdKey, RightKey)
nm_Walk(1.75+y, LeftKey, FwdKey)
nm_Walk(7+z, LeftKey, BackKey)
nm_Walk(1.75+y, LeftKey, FwdKey)
nm_Walk(6+z, FwdKey, RightKey)
nm_Walk(2+y, LeftKey, FwdKey)

loop 2
    nm_cameraRotation("right", 1), Sleep(50)
nm_Walk(7+z, BackKey, RightKey)
nm_Walk(1.75+y, FwdKey, RightKey)
nm_Walk(6+z, LeftKey, FwdKey)
nm_Walk(1.75+y, FwdKey, RightKey)
nm_Walk(7+z, BackKey, RightKey)
nm_Walk(1.75+y, FwdKey, RightKey)
nm_Walk(6+z, LeftKey, FwdKey)
nm_Walk(2+y, FwdKey, RightKey)

nm_cameraRotation("left", 1)
nm_Walk(6+x, BackKey)
nm_Walk(1.75+y, LeftKey)
nm_Walk(6+x, FwdKey)
nm_Walk(1.75+y, LeftKey)
nm_Walk(6+x, BackKey)
nm_Walk(1.75+y, LeftKey)
nm_Walk(6+x, FwdKey)
nm_Walk(2+y, LeftKey)

nm_cameraRotation("left", 1)
nm_Walk(7+z, LeftKey, BackKey)
nm_Walk(1.75+y, BackKey, RightKey)
nm_Walk(6+z, FwdKey, RightKey)
nm_Walk(1.75+y, BackKey, RightKey)
nm_Walk(7+z, LeftKey, BackKey)
nm_Walk(1.75+y, BackKey, RightKey)
nm_Walk(6+z, FwdKey, RightKey)
nm_Walk(2+y, BackKey RightKey)

loop 2
    nm_cameraRotation("right", 1), Sleep(50)
nm_cameraRotation("down", 4), Sleep(50)
; fixed by dully176 with care
