#https://www.youtube.com/watch?v=SztUSAooJKc
#https://www.youtube.com/watch?v=UM87184LuLQ
#https://musescore.com/user/23197591/scores/4347736

use_bpm 120
use_synth :hollow
s = 0.5
q = 0.2
loop_running = true
Rooster = "C:/Users/luciana_brennan/Desktop/Rooster.mp3"
Harmonica = "C:/Users/luciana_brennan/Desktop/Harmonica1.mp3"
intro = "C:/Users/luciana_brennan/Desktop/intro.mp3"

sample Harmonica, amp: 0.5
sleep 2
sample Rooster, amp: 0.5

sleep 9

1.times do
  break unless loop_running
  play 78, amp: 0.5
  sleep s
  play 80, amp: 1
  sleep s
  play 78
  sleep s
  play 82
  
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

play 78, amp: 1.5
sleep s
play 80, amp: 1
sleep s
play 78, amp: 0.5
sleep s
play 82, amp: 0.3

sample intro, amp: 0.5
sleep 6
sample intro, amp: 1
sleep 6
sample intro, amp: 2
