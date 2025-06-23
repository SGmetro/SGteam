nm_Walk(7, FwdKey)
nm_Walk(13, LeftKey)
nm_Walk(4, FwdKey)

Loop {

    send "{" RightKey " down}"
    Walk(5)
    send "{" RightKey " up}"

    Loop 3 {
        SpacingDelay:=2.4
        LengthDelay:=6

        send "{" AFCLRKey " down}"
        Walk(SpacingDelay*(reps*2))
        send "{" AFCLRKey " up}{" AFCFBKey " down}"
        Walk(LengthDelay * size)
        send "{" AFCFBKey " up}"

        loop reps {
            send "{" TCLRKey " down}"
            Walk(SpacingDelay)
            send "{" TCLRKey " up}{" TCFBKey " down}"
            Walk(LengthDelay * size)
            send "{" TCFBKey " up}{" TCLRKey " down}"
            Walk(SpacingDelay)
            send "{" TCLRKey " up}{" AFCFBKey " down}"
            Walk(LengthDelay * size)
            send "{" AFCFBKey " up}"
        }
		
			send "{" AFCLRKey " down}"
			Walk((SpacingDelay+0.1)*(reps*2)) ;slight compensation for accidental left drift
			send "{" AFCLRKey " up}{" TCFBKey " down}"
			Walk(LengthDelay * size)
			send "{" TCFBKey " up}"
			
        loop reps {
            send "{" TCLRKey " down}"
            Walk(SpacingDelay)
            send "{" TCLRKey " up}{" AFCFBKey " down}"
            Walk(LengthDelay * size)
            send "{" AFCFBKey " up}{" TCLRKey " down}"
            Walk(SpacingDelay)
            send "{" TCLRKey " up}{" TCFBKey " down}"
            Walk((LengthDelay+0.3) * size) ;slight forward drift
            send "{" TCFBKey " up}"
        }
    }
	
		send "{" BackKey " down}"
		Walk(4)
		send "{" BackKey " up}"

		send "{" LeftKey " down}"
		Walk(8)
		send "{" LeftKey " up}"

		send "{" FwdKey " down}"
		Walk(6)
		send "{" FwdKey " up}"
		
}