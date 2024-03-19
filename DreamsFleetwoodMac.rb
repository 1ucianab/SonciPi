use_bpm 120
use_synth :piano
s = 1.5

#repeats throughout song
define :back do
  play :f3, sustain: s
  play :a3, sustain: s
  play :c4, sustain: s
  
  sleep 2
  
  play :f3, sustain: s
  play :a3, sustain: s
  play :c4, sustain: s
  
  sleep 2
  
  play :g3, sustain: s
  play :b3, sustain: s
  play :d4, sustain: s
  
  sleep 2
  
  play :g3, sustain: s
  play :b3, sustain: s
  play :d4, sustain: s
  
  sleep 2
end
# end of repeating segment

play :f3, sustain: s
play :a3, sustain: s
play :c4, sustain: s

sleep 2

play :f3, sustain: s
play :a3, sustain: s
play :c4, sustain: s

sleep 2

play :g3, sustain: 3
play :b3, sustain: 3
play :d4, sustain: 3

sleep 3

back
