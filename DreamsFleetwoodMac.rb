#https://www.youtube.com/watch?v=xRf153J3VhQ
#https://www.youtube.com/watch?v=Q2Qjf3wCgCo

use_bpm 120
use_synth :hollow

freedom = "C:/Users/luciana_brennan/Desktop/Freedom.mp3"
g1 = "C:/Users/luciana_brennan/Desktop/Guitars1.mp3"
thunder = "C:/Users/luciana_brennan/Desktop/Thunder.mp3"
outro = "C:/Users/luciana_brennan/Desktop/ohhhh.mp3"


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

live_loop :foo do
  back :f3, :a3, :c4, 1.6
  back :g3, :b3, :d4, 1.6
end

14.times do
  play ilyrics[i], sustain: sus[i]
  sleep imimi[i]
  i = i + 1
  
  if (i == 7)
    sample freedom,amp: 0.7
  end
end

sleep 3

9.times do
  play blyrics[b], sustain: bsus[b]
  sleep bmimi[b]
  b = b + 1
end

sleep 3

sample outro, amp: 0.7

sleep 2

sample thunder, amp: 0.5
sleep 3
12.times do
  play tlyric[t], sustain: tsus[t]
  sleep tmimi[t]
  t = t + 1
end

sleep 1 
sample outro amp: 1
sleep 1
sample outro amp: 0.7
sleep 1
sample outro amp: 0.5
sleep 1
sample outro amp: 0.3


=begin
use_bpm 120
use_synth :hollow

# Define sample paths
freedom = "C:/Users/luciana_brennan/Desktop/Freedom.mp3"
g1 = "C:/Users/luciana_brennan/Desktop/Guitars1.mp3"
thunder = "C:/Users/luciana_brennan/Desktop/Thunder.mp3"
outro = "C:/Users/luciana_brennan/Desktop/ohhhh.mp3"

# Define lyrics and durations for different sections
ilyrics = [:a4, :c5, :d5, :e5, :d5, :c5, :a4, :c5, :d5, :a4, :c5, :a4, :d5, :a4]
isus = [1.6, 1, 1.6, 2, 1, 1.6, 1, 1, 2, 1, 1, 1, 2, 3]
imimi = [1, 0.5, 1, 1, 0.5, 1, 1, 0.5, 1, 0.5, 1, 0.5, 1, 3]

blyrics = [:a4, :c5, :d5, :e5, :d5, :c5, :d5, :g4, :a4]
bsus = [1, 0, 1, 1.6, 0, 1, 0, 0, 3]
bmimi = [1, 0.5, 1, 1, 0.5, 1, 0.5, 0.5, 5]

tlyric = [:e5, :e5, :e5, :e5, :d5, :e5, :d5, :c5, :c5, :c5, :d5, :a4]
tsus = [1.5, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1.5, 3]
tmimi = [1, 0.5, 1, 0.5, 1, 1, 0.5, 1, 0.5, 1, 1]

# Function to play a back pattern
define :play_back do |notes, s|
  2.times do
    play_pattern_timed notes, [2, 2], sustain: s
  end
end

# Function to play a melody
define :play_melody do |notes, sus, mimi|
  notes.zip(sus, mimi).each do |note, sus, mimi|
    play note, sustain: sus
    sleep mimi
  end
end

# Play initial samples
sample g1, amp: 1
sleep 1
play_back [:f3, :a3, :c4], 1.6
play_back [:g3, :b3, :d4], 1.6
play_back [:f3, :a3, :c4], 1.6
play_chord [:g3, :b3, :d4], sustain: 3, amp: 0.5
sleep 3

# Loop for background music
live_loop :background do
  play_back [:f3, :a3, :c4], 1.6
  play_back [:g3, :b3, :d4], 1.6
end

# Play main melody with freedom sample
sample freedom, amp: 0.7, start: 0.5
play_melody ilyrics, isus, imimi

# Play bridge melody
sleep 3
play_melody blyrics, bsus, bmimi

# Play outro with thunder sample
sample outro, amp: 0.7, start: 0.5
sleep 2
sample thunder, amp: 0.5, start: 0.5
sleep 3

# Play final melody with outro sample
play_melody tlyric, tsus, tmimi
sleep 1
4.times do |i|
  sample outro, amp: 1 - i * 0.2, start: 0.5
  sleep 1
end

=end
