# moon_interludes_005
# R.McMASTERS
# for quantum theatre's 'a moon for the misbegotten'
# cody spellman, director


#--------setup--------
# port name
port = "iac_driver_bus_1"

# midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]

# open string
violinSt = [55,69,76]
violaSt = [48,55,69]
celloSt = [36,43,57]
bassSt = [28,33,43]

# tempo control
use_bpm 80


#--------the score--------
# sustain values
$s = [2.0,3.0,4.0,5.0,6.0,7.0]

oct = [0]


live_loop :violin1 do
  
  s = $s.choose
  p = violinSt.choose
  
  if p == 55
    
    5.times do
      
      midi p + oct.choose + 12, sustain: s/5, vel: rrand(75,127), channel: 2, port: port
      sleep s/5
      
    end
    
  elsif p == 62
    
    9.times do
      
      midi p + oct.choose + 12, sustain: s/9, vel: rrand(75,127),channel: 2, port: port
      sleep s/9
      
    end
    
  elsif p == 69
    
    6.times do
      
      midi p + oct.choose + 12, sustain: s/6, vel: rrand(75,127),channel: 2, port: port
      sleep s/6
      
    end
    
  elsif p == 76
    
    3.times do
      
      midi p + oct.choose + 12, sustain: s/3, vel: rrand(75,127),channel: 2, port: port
      sleep s/3
      
    end
  end
end


live_loop :violin2 do
  
  s = $s.choose
  p = violinSt.choose
  
  if p == 55
    
    5.times do
      
      midi p + oct.choose + 12, sustain: s/5, vel: rrand(75,127),channel: 1, port: port
      sleep s/5
      
    end
    
  elsif p == 62
    
    9.times do
      
      midi p + oct.choose + 12, sustain: s/9, vel: rrand(75,127),channel: 2, port: port
      sleep s/9
      
    end
    
  elsif p == 69
    
    6.times do
      
      midi p + oct.choose + 12, sustain: s/6, vel: rrand(75,127),channel: 1, port: port
      sleep s/6
      
    end
    
  elsif p == 76
    
    3.times do
      
      midi p + oct.choose + 12, sustain: s/3, vel: rrand(75,127),channel: 1, port: port
      sleep s/3
      
    end
  end
end


live_loop :viola do
  
  s = $s.choose
  p = violaSt.choose
  
  if p == 48
    
    midi p + oct.choose, sustain: s, vel: rrand(75,127),channel: 3, port: port
    sleep s
    
  elsif p == 55
    
    5.times do
      
      midi p + oct.choose, sustain: s/5, vel: rrand(75,127),channel: 3, port: port
      sleep s/5
      
    end
    
  elsif p == 62
    
    9.times do
      
      midi p + oct.choose, sustain: s/9, vel: rrand(75,127),channel: 2, port: port
      sleep s/9
      
    end
    
  elsif p == 69
    
    6.times do
      
      midi p + oct.choose, sustain: s/6, vel: rrand(75,127),channel: 3, port: port
      sleep s/6
      
    end
  end
end


live_loop :cello do
  
  s = $s.choose
  p = celloSt.choose
  
  if p == 36
    
    midi p + oct.choose, sustain: s, vel: rrand(75,127),channel: 4, port: port
    sleep s
    
  elsif p == 43
    
    5.times do
      
      midi p  + oct.choose, sustain: s/5, vel: rrand(75,127),channel: 4, port: port
      sleep s/5
      
    end
    
  elsif p == 50
    
    9.times do
      
      midi p + oct.choose, sustain: s/9, vel: rrand(75,127),channel: 2, port: port
      sleep s/9
      
    end
    
  elsif p == 57
    
    6.times do
      
      midi p + oct.choose, sustain: s/6, vel: rrand(75,127),channel: 4, port: port
      sleep s/6
      
    end
  end
end



live_loop :bass do
  
  s = $s.choose
  p = bassSt.choose
  
  if p == 28
    
    3.times do
      
      midi p + oct.choose, sustain: s/3, vel: rrand(75,127),channel: 5, port: port
      sleep s/3
      
    end
    
  elsif p == 33
    
    6.times do
      
      midi p + oct.choose, sustain: s/6, vel: rrand(75,127),channel: 5, port: port
      sleep s/6
      
    end
    
  elsif p == 38
    
    9.times do
      
      midi p + oct.choose, sustain: s/9, vel: rrand(75,127),channel: 2, port: port
      sleep s/9
      
    end
    
  elsif p == 43
    
    5.times do
      
      midi p + oct.choose, sustain: s/5, vel: rrand(75,127),channel: 5, port: port
      sleep s/5
      
    end
  end
end