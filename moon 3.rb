# moon 003

mel = [
  [74,79,78],
  [74,79,78,81],
  [73,69,71],
  [67,69]
]

live_loop :mel do
  $it = 0
  s = 1
  mel.size.times do
    p=0
    mel[$it].size.times do
      play mel[$it][p], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      if mel[$it][p] == 74
        play [66,57], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      elsif mel[$it][p] == 79
        play [69,66], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      elsif mel[$it][p] == 78
        play [69,62], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      elsif mel[$it][p] == 81
        play [74,66], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      elsif mel[$it][p] == 73
        play [62,69], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      elsif mel[$it][p] == 69
        play [62,66], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      elsif mel[$it][p] == 71
        play [62,69], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      elsif mel[$it][p] == 67
        play [57,54], pan: rrand(-1,1), sustain: s, attack: 0.5, amp: 0.5
      end
      
      sleep 1
      
      p=p+1
    end
    
    sleep 2
    $it = $it +1
  end
end

live_loop :bass do
  p = (chord :d2, :major, num_octaves: 2).choose
  rrand_i(1,4).times do
    play p, sustain: 1, amp: 0.4
    sleep 1
  end
end

live_loop :cello do
  p = (chord :d3, :major, num_octaves: 2).choose
  rrand_i(1,4).times do
    play p, sustain: 1.25, amp: 0.4
    sleep 1.25
  end
end
