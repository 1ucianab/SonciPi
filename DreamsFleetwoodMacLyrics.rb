use_synth :piano
use_bpm 120
s = 1
=begin
ilyrics = [:a4, :c5, :d5, :e5, :d5, :c5, :a4, :c5, :d5, :a4, :c5, :a4, :d5, :a4,]
i = 0
sus = [1.6, 0, 1.6, 2, 0, 1.6, 0, 0, 2, 0, 1, 0, 2, 2.5]

14.times do
  play ilyrics[i], sustain: sus[i]
  sleep s
  i = i + 1
end
=end

play :a4, sustain: 1.6
sleep s
play :c5
sleep s
play :d5, sustain: 1.6
sleep s
play :e5, sustain: 2
sleep s
play :d5
sleep s
play :c5, sustain: 1.6
sleep s
play :a4
sleep s
play :c5
sleep s
play :d5, sustain: 2
sleep s
play :a4
sleep s
play :c5, sustain: 1
sleep s
play :a4
sleep s
play :d5, sustain: 2
sleep s
play :a4, sustain: 2.5
sleep 3
# pause
=begin
blyrics = [:a4,:c5,:d5,:e5,:d5,:c5,:d5,:g4,:a4]
b = 0
bsus = [1, 0, 1, 1.6, 0, 1, 0, 0, 3]

9.times do
  play blyrics[b], sustain: bsus[b]
  sleep s
  b = b + 1
end
=end

play :a4, sustain: 1
sleep s
play :c5
sleep s
play :d5, sustain: 1
sleep s
play :e5, sustain: 1.6
sleep s
play :d5
sleep s
play :c5, sustain: 1
sleep s
play :d5
sleep s
play :g4
sleep s
play :a4, sustain: 3
sleep 5
#higher pitch
=begin
hlyrics = [:e5,:a5, :g5, :c6, :b5, :a5, :a5, :g5, :d5, :e5, :e5, :e5, :e5, :e5, :a4, :a4]
h = 0
hsus = [0, 1, 0, 0, 1.5, 0, 1, 1, 0, 1, 0, 1, 1, 1, 3, 0]

16.times do
  play hlyrics[h], sustain: hsus[h]
  sleep s 
  h = h + 1
end
=end
play :e5
sleep s
play :a5, sustain: 1
sleep s
play :g5
sleep s
play :c6
sleep s
play :b5, sustain: 1.5
sleep s
play :a5
sleep s
play :a5, sustain: 1
sleep s
play :g5, sustain: 1
sleep s
play :d5
sleep s
play :e5, sustain: 1
sleep s
play :e5
sleep s
play :e5, sustain: 1
sleep s
play :e5, sustain: 1
sleep s
play :e5, sustain: 1
sleep s
play :a4, sustain: 3
sleep s
play :a4
sleep s
#startbridge
play :d5
sleep s
play :e5, sustain: 1
sleep s
play :d5
sleep s
play :c5, sustain: 1
sleep s
play :a4
sleep s
play :d5
sleep s
play :e5
sleep s
play :d5, sustain: 1.5
sleep s
play :c5
sleep s
play :a4
sleep s
play :d5, sustain: 1
sleep s
play :c5, sustain: 3
sleep s
play :g4
sleep s
play :g4
sleep s
#bridge
