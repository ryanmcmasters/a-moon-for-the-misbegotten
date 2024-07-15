# moon_interludes_006
# --dawn washes the ghosts away to rest--

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

# fundamental note
f = 62

# pitches
root = [0,5,2,0,5,2,7,-2,-5,-4,-6,-5]
three = [4,9,5,4,9,5,10,2,-2,0,-3,-2]
six  = [9,14,10,9,14,10,16,7,4,5,2,4]

# global sustain
$s = [12]


#--------the score--------
live_loop :a do
  
  it = 0
  
  root.size.times do
    
    3.times do
      
      midi [
        three[it] + f + 12,
        root[it] + f,
        six[it] + f - 12
      ].choose,
        sustain: $s.choose,
        channel: 1,
        port: port
      
      sleep rrand(1,2)
      
    end
    
    3.times do
      
      midi (chord :fs2, :minor, num_octaves: 2).choose,
        sustain: $s.choose,
        channel: 1,
        port: port
      
      sleep rrand(2,3)
      
    end
    
    it = it + 1
    sleep 1
    
  end
end


live_loop :b do
  
  it = 0
  
  root.size.times do
    
    3.times do
      
      midi [
        three[it] + f - 12,
        root[it] + f,
        six[it] + f + 12
      ].choose,
        sustain: $s.choose,
        channel: 2,
        port: port
      
      sleep rrand(1,2)
      
    end
    
    3.times do
      
      midi (chord :fs2, :minor, num_octaves: 2).choose,
        sustain: $s.choose,
        channel: 2,
        port: port
      
      sleep rrand(2,3)
      
    end
    
    it = it + 1
    sleep 1
    
  end
end


live_loop :c do
  
  it = 0
  
  root.size.times do
    
    3.times do
      
      midi [
        three[it] + f,
        root[it] + f + 12,
        six[it] + f - 12
      ].choose,
        sustain: $s.choose,
        channel: 4,
        port: port
      
      sleep rrand(1,2)
      
    end
    
    3.times do
      
      midi (chord :fs2, :minor, num_octaves: 2).choose,
        sustain: $s.choose,
        channel: 4,
        port: port
      
      sleep rrand(2,3)
      
    end
    
    it = it + 1
    sleep 1
    
  end
end


live_loop :d do
  
  it = 0
  
  root.size.times do
    
    3.times do
      
      midi [
        three[it] + f - 12,
        root[it] + f + 12,
        six[it] + f
      ].choose,
        sustain: $s.choose,
        channel: 5,
        port: port
      
      sleep rrand(1,2)
      
    end
    
    3.times do
      
      midi (chord :fs2, :minor, num_octaves: 2).choose,
        sustain: $s.choose,
        channel: 5,
        port: port
      
      sleep rrand(2,3)
      
    end
    
    it = it + 1
    sleep 1
    
  end
end


live_loop :e do
  
  it = 0
  
  root.size.times do
    
    3.times do
      
      midi [
        three[it] + f - 12,
        root[it] + f + 12,
        six[it] + f
      ].choose,
        sustain: $s.choose,
        channel: 3,
        port: port
      
      sleep rrand(1,2)
      
    end
    
    3.times do
      
      midi (chord :fs2, :minor, num_octaves: 2).choose,
        sustain: $s.choose,
        channel: 3,
        port: port
      
      sleep rrand(2,3)
      
    end
    
    it = it + 1
    sleep 1
    
  end
end