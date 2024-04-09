use_synth :piano
use_bpm 120
s = 1
=begin
ilyrics = [:a4, :c5, :d5, :e5, :d5, :c5, :a4, :c5, :d5, :a4, :c5, :a4, :d5, :a4,]
i = 0
sus = [1.6, 0, 1.6, 2, 0, 1.6, 0, 0, 2, 0, 1, 0, 2, 2.5]
imimi = [1, 0.5, 1, 1, 0.5, 1, 1, 0.5, 1, 1, 1, 0.5, 1, 3]

14.times do
  play ilyrics[i], sustain: sus[i]
  sleep imimi[i]
  i = i + 1
end
=end

play :a4, sustain: 1.6
sleep 1
play :c5
sleep 0.5
play :d5, sustain: 1.6
sleep 1
play :e5, sustain: 2 #go
sleep 1
play :d5 #ag
sleep 0.5
play :c5, sustain: 1.6 # ain
sleep 1
play :a4 #you
sleep 1
play :c5 #say
sleep 0.5
play :d5, sustain: 2 #you
sleep 1
play :a4 #want
sleep 1
play :c5, sustain: 1.5 #your
sleep 1
play :a4
sleep 0.5
play :d5, sustain: 2 #free-
sleep 1
play :a4, sustain: 2.5 #dom
sleep 3
# pause
=begin
blyrics = [:a4,:c5,:d5,:e5,:d5,:c5,:d5,:g4,:a4]
b = 0
bsus = [1, 0, 1, 1.6, 0, 1, 0, 0, 3]
bmimi = [1, 0.5, 1, 1, 0.5, 1, 0.5, 0.5, 5]

9.times do
  play blyrics[b], sustain: bsus[b]
  sleep bmimi[b]
  b = b + 1
end
=end

play :a4, sustain: 1 #well
sleep 1
play :c5 #who
sleep 0.5
play :d5, sustain: 1 #am
sleep 1
play :e5, sustain: 1.6 #I
sleep 1
play :d5 # to
sleep 0.5
play :c5, sustain: 1 # keep
sleep 1
play :d5
sleep 0.5
play :g4
sleep 0.5
play :a4, sustain: 3 #down
sleep 5
#higher pitch
=begin
hlyrics = [:e5,:a5, :g5, :c6, :b5, :a5, :a5, :g5, :d5, :e5, :e5, :e5, :e5, :a4, :a4]
h = 0
hsus = [0, 1, 0, 0, 1.5, 0, 1, 1, 0, 1, 0, 1, 1, 3, 0]
hmimi = [1, 0.5, 1, 0.5, 1, 1, 0.5, 1, 1, 1, 0.5, 1, 1, 2, 1]

15.times do
  play hlyrics[h], sustain: hsus[h]
  sleep hmimi[h]
  h = h + 1
end
=end
play :e5 # its
sleep 1
play :a5, sustain: 1 #on
sleep 0.5
play :g5 #ly
sleep 1
play :c6 # ri
sleep 0.5
play :b5, sustain: 1.5 #ght
sleep 1
play :a5 #that
sleep 1
play :a5, sustain: 1 #you
sleep 0.5
play :g5, sustain: 1 #should
sleep 1
play :d5 #play
sleep 1
play :e5, sustain: 1 #the
sleep 1
play :e5 #way
sleep 0.5
play :e5, sustain: 1 #you
sleep 1
play :e5, sustain: 1 #feel
sleep 1
play :a4, sustain: 3 #it
sleep 2
play :a4 #but
sleep 1
#startbridge
=begin
sblyrics = [:d5, :e5, :d5, :c5, :a4, :d5, :e5, :d5, :c5, :a4, :d5, :c5, :g4, :g4]
sb = 0
sbsus = [0, 1, 0, 1, 0, 0, 0, 1.5, 0, 0, 1, 3, 0, 0]

14.times do
  play sblyrics[sb], sustain: sbsus[sb]
  sleep s
  sb = sb + 1
end
=end

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
=begin
brlyrics = [:e5, :d5, :c5, :c5, :a4, :d5, :c5, :c5, :d5, :d5, :c5, :g4, :g4]
br = 0
brsus = [1.5, 1, 1, 0, 0, 1 ,1, 1, 0, 1, 3, 0, 0]

13.times do
  play brlyrics[br], sustain: brsus[br]
  sleep s
  br = br + 1
end
=end

play :e5, sustain: 1.5
sleep s
play :d5, sustain: 1
sleep s
play :c5, sustain: 1
sleep s
play :c5
sleep s
play :a4
sleep s
play :d5, sustain: 1
sleep s
play :c5, sustain: 1
sleep s
play :c5, sustain: 1
sleep s
play :d5
sleep s
play :d5, sustain: 1
sleep s
play :c5, sustain: 3
sleep s
play :g4
sleep s
play :g4
sleep s

=begin
qlyrics = [:e5,:d5, :c5, :g4, :e5, :d5, :d5, :c5, :c5, :d5, :d5, :c5]
q = 0
qsus = [1.5, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 3]

12.times do
  play qlyrics[q]
  sleep s
  q = q + 1 
end
=end

play :e5, sustain: 1.5
sleep s
play :d5, sustain: 1
sleep s
play :c5, sustain: 1
sleep s
play :g4
sleep s
play :e5
sleep s
play :d5
sleep s
play :d5, sustain: 1
sleep s
play :c5
sleep s
play :c5
sleep s
play :d5
sleep s
play :d5, sustain: 1
sleep s
play :c5, sustain: 3
sleep s
