
use_bpm 120
use_synth :piano

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

#1
back :f3, :a3, :c4, 1.6

back :g3, :b3, :d4, 1.6

back :f3, :a3, :c4, 1.6

back :g3, :b3, :d4, 1.6

#5
back :f3, :a3, :c4, 1.6

back :g3, :b3, :d4, 1.6

back :f3, :a3, :c4, 1.6

back :g3, :b3, :d4, 1.6

back :f3, :a3, :c4, 1.6

#10
back :g3, :b3, :d4, 1.6

back :f3, :a3, :c4, 1.6

back :g3, :b3, :d4, 1.6
