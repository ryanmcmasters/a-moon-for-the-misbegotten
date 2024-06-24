# moon 004
f = 62
three = [
  [0 + f,4 + f],
  [5 + f,9 + f],
  [4 + f,7 + f],
  [0 + f,4 + f],
  [5 + f,9 + f],
  [4 + f,7 + f],
  [7 + f, 11 + f],
  [-1 + f, 2 + f],
  [-5 + f, -1 + f],
  [-3 + f, 0 + f],
  [-7 + f, -3 + f],
  [-5 + f, -1 + f]
]

six  = [
  [0 + f,9 + f],
  [5 + f,14 + f],
  [4 + f,12 + f],
  [0 + f,9 + f],
  [5 + f,14 + f],
  [4 + f,12 + f],
  [7 + f, 16 + f],
  [-1 + f, 7 + f],
  [-5 + f, 4 + f],
  [-3 + f, 5 + f],
  [-7 + f, 2 + f],
  [-5 + f, 4 + f]
]

live_loop :three do
  play three.tick, sustain: 1, amp: 0.5, pan: -1
  2.times do
    play (chord :fs2, :minor, num_octaves: 3).choose, amp: 0.05, pan: -1, sustain: 0.5, attack: 0.5
  end
  sleep 1
end

live_loop :three2 do
  play three.tick, sustain: 1.5, amp: 0.5, pan: 0.5
  2.times do
    play (chord :fs2, :minor, num_octaves: 3).choose, amp: 0.05, pan: -0.5, sustain: 1, attack: 0.5
  end
  sleep 1.5
end

live_loop :six do
  play six.tick, sustain: 1.25, amp: 0.5, pan: -0.5
  2.times do
    play (chord :fs2, :minor, num_octaves: 3).choose, amp: 0.05, pan: 0.5, sustain: 0.75, attack: 0.5
  end
  sleep 1.25
end

live_loop :six2 do
  play six.tick, sustain: 1.75, amp: 0.5, pan: 1
  2.times do
    play (chord :fs2, :minor, num_octaves: 3).choose, amp: 0.05, pan: 1, sustain: 1.25, attack: 0.5
  end
  sleep 1.75
end


