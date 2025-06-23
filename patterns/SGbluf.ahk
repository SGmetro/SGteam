    send "{" LeftKey " down}"
    Walk(4.5)
    send "{" LeftKey " up}"

    Loop 3 { ; 3 loops means 3x the actual pattern before realign, put your pattern of choice in here, in this example its true e_lol
        SpacingDelay:=2.4
        LengthDelay:=7
        
        send "{" LeftKey " down}"
        Walk(SpacingDelay*(reps*2))
        send "{" LeftKey " up}{" AFCFBKey " down}"
        Walk(LengthDelay * size)
        send "{" AFCFBKey " up}"
        loop reps {
            send "{" RightKey " down}"
            Walk(SpacingDelay)
            send "{" RightKey " up}{" TCFBKey " down}"
            Walk(LengthDelay * size)
            send "{" TCFBKey " up}{" RightKey " down}"
            Walk(SpacingDelay)
            send "{" RightKey " up}{" AFCFBKey " down}"
            Walk(LengthDelay * size)
            send "{" AFCFBKey " up}"
        }
        send "{" LeftKey " down}"
        Walk((SpacingDelay+0.1)*(reps*2)) ;slight compensation for accidental left drift
        send "{" LeftKey " up}{" TCFBKey " down}"
        Walk(LengthDelay * size)
        send "{" TCFBKey " up}"
        loop reps {
            send "{" RightKey " down}"
            Walk(SpacingDelay)
            send "{" RightKey " up}{" AFCFBKey " down}"
            Walk(LengthDelay * size)
            send "{" AFCFBKey " up}{" RightKey " down}"
            Walk(SpacingDelay)
            send "{" RightKey " up}{" TCFBKey " down}"
            Walk((LengthDelay+0.3) * size) ;slight forward drift
            send "{" TCFBKey " up}"
        }
    
    } ; stop here the pattern, now realign part comes
	
	send "{" FwdKey " down}"
    Walk(2.5)
    send "{"  FwdKey " up}"
	
    send "{" RightKey " down}"
    Walk(7)
    send "{"  RightKey " up}"

    send "{" BackKey " down}"
    Walk(4)
    send "{" BackKey " up}"