# moon_interludes_003
# --the haunting initiates--

# R.McMASTERS
# for quantum theatre's 'a moon for the misbegotten'
# cody spellman, director


#--------setup--------
# port name
port = "iac_driver_bus_1"

# midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]

# tempo control
use_bpm 52


# melody array
mel = [
  [62, 67, 64],
  [62, 67, 64, 69],
  [60, 57, 58],
  [56, 57]
]


#--------the score--------
live_loop :clusters do
  
  s = rrand(1,8)
  m = mel.choose
  
  m.size.times do
    
    midi m.tick + [-12,0,12,24].choose,
      sustain: s,
      vel: rrand(50,127),
      port: port,
      channel: [1]
    
    sleep [0.25,0.5,0.75,1].choose
    
  end
  
  sleep s
  
end


live_loop :clusters2 do
  
  s = rrand(1,8)
  m = mel.choose
  
  m.size.times do
    
    midi m.tick + [-12,0,12,24].choose,
      sustain: s,
      vel: rrand(50,127),
      port: port,
      channel: [2]
    
    sleep [0.25,0.5,0.75,1].choose
    
  end
  
  sleep s
  
end


live_loop :clusters3 do
  
  s = rrand(1,8)
  m = mel.choose
  
  m.size.times do
    
    midi m.tick + [-24,-12,0,12,24].choose,
      sustain: s,
      vel: rrand(50,127),
      port: port,
      channel: [3]
    
    sleep [0.25,0.5,0.75,1].choose
    
  end
  
  sleep s
  
end


live_loop :clusters4 do
  
  s = rrand(1,8)
  m = mel.choose
  
  m.size.times do
    
    midi m.tick + [-24,-12,0,12].choose,
      sustain: s,
      vel: rrand(50,127),
      port: port,
      channel: [4]
    
    sleep [0.25,0.5,0.75,1].choose
    
  end
  
  sleep s
  
end


live_loop :clusters5 do
  
  s = rrand(1,8)
  m = mel.choose
  
  m.size.times do
    
    midi m.tick + [-24,-12,0].choose,
      sustain: s,
      vel: rrand(50,127),
      port: port,
      channel: [5]
    
    sleep [0.25,0.5,0.75,1].choose
    
  end
  
  sleep s
  
end