#https://www.youtube.com/watch?v=xRf153J3VhQ
#https://www.youtube.com/watch?v=Q2Qjf3wCgCo

use_bpm 120
use_synth :piano
s = 1

freedom = "C:/Users/luciana_brennan/Desktop/you_want_your_freedom.mp3"
down = "C:/Users/luciana_brennan/Desktop/keep_you_down.mp3"
g1 = "C:/Users/luciana_brennan/Desktop/guitar_1.mp3"


ilyrics = [:a4, :c5, :d5, :e5, :d5, :c5, :a4, :c5, :d5, :a4, :c5, :a4, :d5, :a4,]
i = 0
sus = [1.6, 0, 1.6, 2, 0, 1.6, 0, 0, 2, 0, 1, 0, 2, 2.5]
imimi = [1, 0.5, 1, 1, 0.5, 1, 1, 0.5, 1, 1, 1, 0.5, 1, 3]

blyrics = [:a4,:c5,:d5,:e5,:d5,:c5,:d5,:g4,:a4]
b = 0
bsus = [1, 0, 1, 1.6, 0, 1, 0, 0, 3]
bmimi = [1, 0.5, 1, 1, 0.5, 1, 0.5, 0.5, 5]

t = 0
tlyric = [:e5, :e5, :e5, :e5, :d5, :e5, :d5, :c5, :c5, :c5, :d5, :a4]
tsus = [1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 3]
tmimi = [1, 0.5, 1, 0.5, 1, 1, 0.5, 1, 0.5, 1, 1]

#repeats throughout song
define :back do |n, n2, n3, s, a|
  play n, sustain: s, amp: a
  play n2, sustain: s, amp: a
  play n3, sustain: s, amp: a
  sleep 2
  play n, sustain: s, amp: a
  play n2, sustain: s, amp: a
  play n3, sustain: s, amp: a
  sleep 2
end
# end of repeating segment

sample g1, amp: 2
sleep 8

back :f3, :a3, :c4, 1.6, 0.5

back :g3, :b3, :d4, 1.6, 0.5

back :f3, :a3, :c4, 1.6, 0.5

play :g3, sustain: 3, 0.5
play :b3, sustain: 3, 0.5
play :d4, sustain: 3, 0.5

sleep 3

live_loop :foo do
  back :f3, :a3, :c4, 1.6, 0.5
  back :g3, :b3, :d4, 1.6, 0.5
end

14.times do
  play ilyrics[i], sustain: sus[i]
  sleep imimi[i]
  i = i + 1
  
  if (i == 9)
    sample freedom
  end
end

sleep 3

9.times do
  play blyrics[b], sustain: bsus[b]
  sleep bmimi[b]
  b = b + 1
  
  if (b == 5)
    sample down
  end
end

sleep 3
#add a whooshing almost wind like sound then go fade into oohh thunder always happens when its raining
#from there then do an ooowhooowhooo

12.times do
  play tlyric[t], sustain: tsus[t]
  sleep tmimi[t]
  t = t + 1
end
