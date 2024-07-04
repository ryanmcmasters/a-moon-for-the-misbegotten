# moon_interludes_003
# R.McMASTERS
# for quantum theatre's 'a moon for the misbegotten'
# cody spellman, director


#--------setup--------
# port name
port = "iac_driver_bus_1"

# midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]

# tempo control
use_bpm 60

# melody array
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
  oct = [0,12,24]
  
  mel.size.times do
    
    p=0
    
    mel[$it].size.times do
      
      midi mel[$it][p], sustain: s, channel: 3, port: port
      
      # harmony conditions
      if mel[$it][p] == 74
        
        midi 57 + oct.choose, channel: 2, sustain: s+2, port: port
        midi [66,65].choose + oct.choose, channel: 1, sustain: s+2, port: port
        
      elsif mel[$it][p] == 79
        
        midi [66,65].choose  + oct.choose, channel: 2, sustain: s+2, port: port
        midi 69 + oct.choose, channel: 1, sustain: s+2, port: port
        
      elsif mel[$it][p] == 78
        
        midi 69 + oct.choose, channel: 2, sustain: s+2, port: port
        midi 62 + oct.choose, channel: 1, sustain: s+2, port: port
        
      elsif mel[$it][p] == 81
        
        midi 74 + oct.choose, channel: 1, sustain: s+2, port: port
        midi [66,65].choose + oct.choose, channel: 2, sustain: s+2, port: port
        
      elsif mel[$it][p] == 72
        
        midi 69 + oct.choose, channel: 2, sustain: s+2, port: port
        midi 62 + oct.choose, channel: 1, sustain: s+2, port: port
        
      elsif mel[$it][p] == 69
        
        midi [66,65].choose + oct.choose, channel: 2, sustain: s+2, port: port
        midi 62 + oct.choose, channel: 1, sustain: s+2, port: port
        
      elsif mel[$it][p] == 70
        
        midi 69 + oct.choose, channel: 2, sustain: s+2, port: port
        midi 62 + oct.choose, channel: 1, sustain: s+2, port: port
        
      elsif mel[$it][p] == 68
        
        midi 57 + oct.choose, channel: 2, sustain: s+2, port: port
        midi [54,53].choose + oct.choose, channel: 1, sustain: s+2, port: port
      end
      
      sleep 1
      p=p+1
      
    end
    
    sleep 3
    $it = $it +1
    
  end
  
  sleep rrand_i(2,4)
  
end


live_loop :cello do
  
  use_bpm [90, 120, 150, 180].choose
  
  p = [(chord :d2, :major, num_octaves: 2),
       (chord :d2, :minor, num_octave: 2)].choose.choose
  
  rrand_i(1,4).times do
    midi p, sustain: 1.25, channel: 5, port: port
    sleep 0.5
    midi p, sustain: 1.25, vel: 100, channel: 5, port: port
    sleep 1.5
    
  end
end


live_loop :bass do
  use_bpm [90,120,150,180].choose
  p = [(chord :d2, :major, num_octaves: 2),
       (chord :d2, :minor, num_octave: 2)].choose.choose
  
  rrand_i(1,4).times do
    
    midi p, sustain: 1, channel: 4, port: port
    sleep 0.5
    midi p + 12, sustain: 1, vel: 100, channel: 4, port: port
    sleep 1.5
    
  end
end
