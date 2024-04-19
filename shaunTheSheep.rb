use_bpm 120
use_synth :piano

# Define sample paths
Rooster = "C:/Users/luciana_brennan/Desktop/Rooster Sound Effect1.wav"
Harmonica = "C:/Users/luciana_brennan/Desktop/Harmonica.wav"

# Function to play banjo1 melody
define :play_banjo1 do
  sleep 1
  play_pattern_timed [78, 80, 78, 82, 78, 76, 78, 74], [s, s, s, s, s, s, s, s]
  sleep 1
  play_pattern_timed [74, 78, 80] + [82] * 5 + [78, 76, 78, 74], [s, s, s, s] + [s] * 5 + [s, s, s, s]
  sleep 1
  play_pattern_timed [78, 76, 78, 76, 81, 82, 81, 83], [s, s, s, s, s, s, s, s]
  sleep 1
  play 82, release: 2
  sleep 1
  play_pattern_timed [80] * 3 + [78, 76, 78, 74], [s] * 3 + [s, s, s, s]
end

# Function to play banjo2 melody
define :play_banjo2 do
  sleep 1
  play_pattern_timed [62, 66, 62, 66, 62], [s, s, s, s, s]
  4.times {play_banjo2_helper}
  play_pattern_timed [66, 62, 66, 62], [s, s, s, s]
  play_pattern_timed [62, 66, 62, 66, 62], [s, s, s, s, s]
  5.times {play_banjo2_helper}
end

# Helper function for banjo2 melody
define :play_banjo2_helper do
  play_pattern_timed [66, 62, 66, 62, 65, 62, 66, 62], [s, s, s, s, s, s, s, s]
end

# Play harmonica and rooster samples
sample Harmonica, amp: 0.5
sleep 2
sample Rooster

# Play banjo1 and banjo2 in separate threads
in_thread(name: :banjo1) do
  loop {play_banjo1}
end

in_thread(name: :banjo2) do
  loop {play_banjo2}
end





  
  =begin
    use_bpm 120
use_synth :piano

# Define sample paths
Rooster = "C:/Users/luciana_brennan/Desktop/Rooster Sound Effect1.wav"
Harmonica = "C:/Users/luciana_brennan/Desktop/Harmonica.wav"

# Function to play banjo1 melody
define :play_banjo1 do
  sleep 1
  play_pattern_timed [78, 80, 78, 82, 78, 76, 78, 74], [s, s, s, s, s, s, s, s]
  sleep 1
  play_pattern_timed [74, 78, 80] + [82] * 5 + [78, 76, 78, 74], [s, s, s, s] + [s] * 5 + [s, s, s, s]
  sleep 1
  play_pattern_timed [78, 76, 78, 76, 81, 82, 81, 83], [s, s, s, s, s, s, s, s]
  sleep 1
  play 82, release: 2
  sleep 1
  play_pattern_timed [80] * 3 + [78, 76, 78, 74], [s] * 3 + [s, s, s, s]
end

# Function to play banjo2 melody
define :play_banjo2 do
  sleep 1
  play_pattern_timed [62, 66, 62, 66, 62], [s, s, s, s, s]
  4.times {play_banjo2_helper}
  play_pattern_timed [66, 62, 66, 62], [s, s, s, s]
  play_pattern_timed [62, 66, 62, 66, 62], [s, s, s, s, s]
  5.times {play_banjo2_helper}
end

# Helper function for banjo2 melody
define :play_banjo2_helper do
  play_pattern_timed [66, 62, 66, 62, 65, 62, 66, 62], [s, s, s, s, s, s, s, s]
end

# Function to fade out loop
define :fade_out do |loop_name|
  control loop_name, amp: 1, amp_slide: 4
  sleep 8
  control loop_name, amp: 0
end

# Play harmonica and rooster samples
sample Harmonica, amp: 0.5
sleep 2
sample Rooster

# Play banjo1 and banjo2 in separate threads
in_thread(name: :banjo1) do
  loop do
    play_banjo1
  end
end

in_thread(name: :banjo2) do
  loop do
    play_banjo2
  end
end

# Fade out both loops
fade_out(:banjo1)
fade_out(:banjo2)

  =end
