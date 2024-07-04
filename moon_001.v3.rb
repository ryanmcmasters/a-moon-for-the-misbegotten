# moon_interludes_001
# R.McMASTERS
# for quantum theatre's 'a moon for the misbegotten'
# cody spellman, director


#--------setup--------
# port name
port = "iac_driver_bus_1"

# midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]

# tempo control
use_bpm 40

#melody array
mel = [
  [62, 67, 64],
  [62, 67, 64, 69],
  [60, 57, 58],
  [56, 57]
]


#--------the score--------
# descants
live_loop :melL do
  
  it = 0
  
  mel.size.times do
    
    i = 0
    
    mel[it].size.times do
      
      rrand_i(1,6).times do
        
        midi mel[it][i] + [24,36].choose, sustain: 0.1, channel: 1, port: port
        sleep 0.1
        
      end
      
      midi mel[it][i] + [24,36].choose, sustain: 3, channel: 1, port: port
      sleep [1,1.5,1.75].choose
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
      
      rrand_i(1,6).times do
        
        midi mel[it][i] + [24,36].choose, sustain: 0.1, channel: 2, port: port
        sleep 0.1
        
      end
      
      midi mel[it][i] + [24,36].choose, sustain: 3, channel: 2, port: port
      sleep [1,1.5,1.75].choose
      i = i + 1
      
    end
    
    it = it + 1
    sleep [2,1.5].choose
    
  end
end


# center melody
live_loop :melC do
  
  it = 0
  
  mel.size.times do
    
    i = 0
    
    mel[it].size.times do
      
      midi mel[it][i], sustain: 4, channel: 3, port: port
      sleep 0.1
      midi mel[it][i] + 12, sustain: 2, channel: 3, vel: 50, port: port
      sleep 0.1
      midi mel[it][i] - 12, sustain: 2, channel: 3, vel: 50, port: port
      sleep 0.8
      i = i + 1
      
    end
    
    it = it + 1
    sleep [2,3].choose
    
  end
end


# drones
live_loop :drone1 do
  
  s = [2,4,6].choose
  
  rrand_i(1,3).times do
    midi ([38,45,52,65].choose + [0,12].choose), sustain: s+2, channel: 4, port: port
    sleep rrand(0.05,0.1)
    
  end
  
  sleep s
  
end


live_loop :drone2 do
  
  s = [2,4,6].choose
  
  rrand_i(1,3).times do
    
    midi ([38,45,52,65].choose + [0,12].choose), sustain: s+2, channel: 5, port: port
    sleep rrand(0.05,0.1)
    
  end
  
  sleep s
  
end


