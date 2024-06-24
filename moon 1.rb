# moon 001
# overture

mel = [
  [62, 67, 66],
  [62, 67, 66, 69],
  [61, 57, 59],
  [55, 57]
]

live_loop :melL do
  it = 0
  mel.size.times do
    i = 0
    mel[it].size.times do
      play mel[it][i] + 24, sustain: 2, pan: rrand(-1,-0.5), amp: 0.01
      
      i = i + 1
    end
    it = it + 1
    sleep [2,1.5].choose
  end
end

live_loop :melR do
  it = 0
  mel.size.times do
    i = 0
    mel[it].size.times do
      play mel[it][i] + 24, sustain: 2, pan: rrand(0.5,1), amp: 0.01
      sleep [1,1.5,1.75].choose
      i = i + 1
    end
    it = it + 1
    sleep [2,1.5].choose
  end
end

live_loop :melC do
  it = 0
  mel.size.times do
    i = 0
    mel[it].size.times do
      play mel[it][i], sustain: 2, amp: 0.75
      sleep 1
      i = i + 1
    end
    it = it + 1
    sleep [2,3].choose
  end
end

live_loop :drone1 do
  s = [2,4,6].choose
  play ([38,45].choose + [0,12,24].choose), sustain: s, amp: 0.25, pan: -0.25
  sleep s
end

live_loop :drone2 do
  s = [2,4,6].choose
  play ([38,45].choose + [0,12,24].choose), sustain: s, amp: 0.25, pan: 0.25
  sleep s
end


