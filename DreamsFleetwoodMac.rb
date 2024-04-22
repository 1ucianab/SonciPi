#https://www.youtube.com/watch?v=xRf153J3VhQ
#https://www.youtube.com/watch?v=Q2Qjf3wCgCo

use_bpm 120
use_synth :hollow

freedom = "C:/Users/luciana_brennan/Desktop/Freedom.mp3"
g1 = "C:/Users/luciana_brennan/Desktop/Guitars1.mp3"
thunder = "C:/Users/luciana_brennan/Desktop/Thunder.mp3"
outro = "C:/Users/luciana_brennan/Desktop/outro.mp3"

ilyrics = [:a4, :c5, :d5, :e5, :d5, :c5, :a4, :c5, :d5, :a4, :c5, :a4, :d5, :a4,]
i = 0
sus = [1.6, 1, 1.6, 2, 1, 1.6, 1, 1, 2, 1, 1, 1, 2, 3]
imimi = [1, 0.5, 1, 1, 0.5, 1, 1, 0.5, 1, 0.5, 1, 0.5, 1, 3]

blyrics = [:a4,:c5,:d5,:e5,:d5,:c5,:d5,:g4,:a4]
b = 0
bsus = [1, 0, 1, 1.6, 0, 1, 0, 0, 3]
bmimi = [1, 0.5, 1, 1, 0.5, 1, 0.5, 0.5, 5]

t = 0
tlyric = [:e5, :e5, :e5, :e5, :d5, :e5, :d5, :c5, :c5, :c5, :d5, :a4]
tsus = [1.5, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1.5, 3]
tmimi = [1, 0.5, 1, 0.5, 1, 1, 0.5, 1, 0.5, 1, 1]

#repeats throughout song
define :back do |n, n2, n3, s|
  play n, sustain: s
  play n2, sustain: s
  play n3, sustain: s
  sleep 2
  play n, sustain: s
  play n2, sustain: s
  play n3, sustain: s
  sleep 2
end
# end of repeating segment

sample g1, amp: 1
sleep 1

back :f3, :a3, :c4, 1.6

back :g3, :b3, :d4, 1.6

back :f3, :a3, :c4, 1.6

play :g3, sustain: 3, amp: 0.5
play :b3, sustain: 3, amp: 0.5
play :d4, sustain: 3, amp: 0.5

sleep 3
loop_running = true

live_loop :background do
  break unless loop_running
  back :f3, :a3, :c4, 1.6
  back :g3, :b3, :d4, 1.6
end

14.times do
  play ilyrics[i], sustain: sus[i]
  sleep imimi[i]
  i = i + 1
end

sleep 3

9.times do
  play blyrics[b], sustain: bsus[b]
  sleep bmimi[b]
  b = b + 1
end

sleep 3

sample outro, amp: 0.4
sleep 1
sample outro, amp: 0.6
sleep 1
sample outro, amp: 0.8

sleep 2

sample thunder, amp: 0.5
sleep 3
12.times do
  play tlyric[t], sustain: tsus[t]
  sleep 1
  t = t + 1
end

loop_running = false

sleep 1

play :g3, sustain: 3, amp: 0.3
play :b3, sustain: 3, amp: 0.3
play :d4, sustain: 3, amp: 0.3
