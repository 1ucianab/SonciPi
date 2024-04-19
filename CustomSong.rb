#https://www.youtube.com/watch?v=SztUSAooJKc
#https://www.youtube.com/watch?v=UM87184LuLQ
#https://musescore.com/user/23197591/scores/4347736

use_bpm 120
use_synth :piano
s = 0.5
q = 0.2

Rooster = "C:/Users/luciana_brennan/Desktop/Rooster Sound Effect1.wav"
Harmonica = "C:/Users/luciana_brennan/Desktop/Harmonica.wav"

sample Harmonica
sleep 2
sample Rooster

sleep 9

live_loop :banjo1 do
  play 78, amp: 0.5
  sleep s
  play 80, amp: 1
  sleep s
  play 78, amp: 1.5
  sleep s
  play 82, amp: 2
  
  sleep 1
  
  play 78
  sleep s
  play 76
  sleep s
  play 78
  sleep s
  play 74
  
  sleep 1
  
  play 74
  sleep s
  play 78
  sleep s
  play 80
  sleep s
  5.times do
    play 82
    sleep s
  end
  #
  play 78
  sleep s
  play 76
  sleep s
  play 78
  sleep s
  play 74
  
  sleep 1
  #2
  play 78
  sleep s
  play 76
  sleep s
  play 78
  sleep s
  play 76
  
  sleep 1
  
  play 81
  sleep s
  play 82
  sleep s
  play 81
  sleep s
  play 83
  
  sleep 1
  
  play 82, release: 2
  sleep 1
  
  3.times do
    play 80
    sleep s
  end
  
  play 78
  sleep s
  play 76
  sleep s
  play 78
  sleep s
  play 74
  
end

sleep 1

live_loop :banjo_2 do
  sleep 1
  play 62, amp: q
  sleep s
  play 66, amp: q
  sleep s
  play 62, amp: q
  sleep s
  play 66, amp: q
  sleep s
  play 62, amp: q
  
  define :banjo2 do
    play 66, amp: q
    sleep s
    play 62, amp: q
    sleep s
    play 66, amp: q
    sleep s
    play 62, amp: q
    sleep s
    
    play 65, amp: q
    sleep s
    play 62, amp: q
    sleep s
    play 66, amp: q
    sleep s
    play 62, amp: q
    sleep s
  end
  
  banjo2
  banjo2
  banjo2
  banjo2
  
  play 66, amp: q
  sleep s
  play 62, amp: q
  sleep s
  play 66, amp: q
  sleep s
  play 62, amp: q
  sleep s
  
  play 62, amp: q
  sleep s
  play 66, amp: q
  sleep s
  play 62, amp: q
  sleep s
  play 66, amp: q
  sleep s
  play 62, amp: q
  
  banjo2
  banjo2
  banjo2
  banjo2
  banjo2
  
end
#shaun the sheeppppppppppppp --> fade out to then play next song 
#orr a whooshing noise
