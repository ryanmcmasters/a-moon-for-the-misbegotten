# moon_003


#port name
port = "iac_driver_bus_1"

#midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]


#melody array
mel = [
  [74,79,76],
  [74,79,76,81],
  [72,69,70],
  [68,69]
]


#--------the score--------

live_loop :mel do
  $it = 0
  s = 1
  oct = [-12,-24,0]
  mel.size.times do
    p=0
    mel[$it].size.times do
      midi mel[$it][p], sustain: s, channel: 3, port: port
      
      #harmony conditions
      if mel[$it][p] == 74
        midi 57 + oct.choose, channel: 2, sustain: s, port: port
        midi 66 + oct.choose, channel: 3, sustain: s, port: port
        
      elsif mel[$it][p] == 79
        midi 66 + oct.choose, channel: 2, sustain: s, port: port
        midi 69 + oct.choose, channel: 3, sustain: s, port: port
        
      elsif mel[$it][p] == 78
        midi 69 + oct.choose, channel: 2, sustain: s, port: port
        midi 62 + oct.choose, channel: 3, sustain: s, port: port
        
      elsif mel[$it][p] == 81
        midi 74 + oct.choose, channel: 3, sustain: s, port: port
        midi 66 + oct.choose, channel: 2, sustain: s, port: port
        
      elsif mel[$it][p] == 72
        midi 69 + oct.choose, channel: 2, sustain: s, port: port
        midi 62 + oct.choose, channel: 3, sustain: s, port: port
        
      elsif mel[$it][p] == 69
        midi 65 + oct.choose, channel: 2, sustain: s, port: port
        midi 62 + oct.choose, channel: 3, sustain: s, port: port
        
      elsif mel[$it][p] == 70
        midi 69 + oct.choose, channel: 2, sustain: s, port: port
        midi 62 + oct.choose, channel: 3, sustain: s, port: port
        
      elsif mel[$it][p] == 68
        midi 57 + oct.choose, channel: 2, sustain: s, port: port
        midi 54 + oct.choose, channel: 3, sustain: s, port: port
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
    midi p, sustain: 1, channel: 4, port: port
    sleep 1
  end
end

live_loop :cello do
  p = (chord :d3, :major, num_octaves: 2).choose
  rrand_i(1,4).times do
    midi p, sustain: 1.25, channel: 5, port: port
    sleep 1.25
  end
end
