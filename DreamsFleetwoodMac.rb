
use_bpm 120
use_synth :piano
s = 1

freedom = "C:/Users/luciana_brennan/Desktop/you_want_your_freedom.mp3"


ilyrics = [:a4, :c5, :d5, :e5, :d5, :c5, :a4, :c5, :d5, :a4, :c5, :a4, :d5, :a4,]
i = 0
sus = [1.6, 0, 1.6, 2, 0, 1.6, 0, 0, 2, 0, 1, 0, 2, 2.5]
is = [1, 0.5, 1, 1, 0.5, 1, 1, 0.5, 1, 0.5, 1, 1, 1]

blyrics = [:a4,:c5,:d5,:e5,:d5,:c5,:d5,:g4,:a4]
b = 0
bsus = [1, 0, 1, 1.6, 0, 1, 0, 0, 3]

hlyrics = [:e5,:a5, :g5, :c6, :b5, :a5, :a5, :g5, :d5, :e5, :e5, :e5, :e5, :e5, :a4, :a4]
h = 0
hsus = [0, 1, 0, 0, 1.5, 0, 1, 1, 0, 1, 0, 1, 1, 1, 3, 0]

sblyrics = [:d5, :e5, :d5, :c5, :a4, :d5, :e5, :d5, :c5, :a4, :d5, :c5, :g4, :g4]
sb = 0
sbsus = [0, 1, 0, 1, 0, 0, 0, 1.5, 0, 0, 1, 3, 0, 0]

brlyrics = [:e5, :d5, :c5, :c5, :a4, :d5, :c5, :c5, :d5, :d5, :c5, :g4, :g4]
br = 0
brsus = [1.5, 1, 1, 0, 0, 1 ,1, 1, 0, 1, 3, 0, 0]


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

back :f3, :a3, :c4, 1.6

back :g3, :b3, :d4, 1.6

back :f3, :a3, :c4, 1.6

play :g3, sustain: 3
play :b3, sustain: 3
play :d4, sustain: 3

sleep 3

live_loop :foo do
  back :f3, :a3, :c4, 1.6
  back :g3, :b3, :d4, 1.6
end

14.times do
  play ilyrics[i], sustain: sus[i]
  sleep s
  i = i + 1
end

sleep 3

9.times do
  play blyrics[b], sustain: bsus[b]
  sleep s
  b = b + 1
end

sleep 3

16.times do
  play hlyrics[h], sustain: hsus[h]
  sleep s
  h = h + 1
end

sleep 3

14.times do
  play sblyrics[sb], sustain: sbsus[sb]
  sleep s
  sb = sb + 1
end

sleep 3

13.times do
  play brlyrics[br], sustain: brsus[br]
  sleep s
  br = br + 1
end
