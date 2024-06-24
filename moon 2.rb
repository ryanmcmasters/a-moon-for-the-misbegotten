# moon 002

mel = [
  [62, 67, 66].ring,
  [62, 67, 66, 69].ring,
  [61, 57, 59].ring,
  [55, 57].ring
]

live_loop :clusters do
  s = rrand_i(4.0,8.0)
  mel.choose.size.times do
    play mel.choose.tick + [-12,0,12,24].choose, attack: s/2, sustain: s, pan: rrand(-1,-0.25), amp: 0.25
    sleep [0.25,0.5].choose
  end
  sleep s
end

live_loop :clusters2 do
  s = rrand_i(4,8)
  mel.choose.size.times do
    play mel.choose.tick + [-12,0,12,24].choose, attack: s/2, sustain: s, pan: rrand(0.25,1), amp: 0.25
    sleep [0.25,0.5].choose
  end
  sleep s
end
