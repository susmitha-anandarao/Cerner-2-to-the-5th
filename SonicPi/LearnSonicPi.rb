# cerner_2^5_2018

2.times do
  play :c4
  sleep 0.5
  play :d4
  sleep 0.5
  play :e4
  sleep 0.5
  play :d4
  sleep 0.5
  play :c4
  sleep 0.5
end

live_loop :sample do
  use_synth :prophet
  play :c1, release: 8, cutoff: rrand(70, 120)
  sleep 8
end

live_loop :another_sample do
  sample :bd_haus
  sleep 0.5
end
