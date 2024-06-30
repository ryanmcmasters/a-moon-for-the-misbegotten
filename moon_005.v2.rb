# moon_005


#port name
port = "iac_driver_bus_1"

#midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]


#open string
celloSt = [36, 43, 57]
violaSt = [48, 55, 69]
violinSt = [55, 69, 76]
bassSt = [28,33,43]

#tempo
use_bpm 20


#--------the score--------

live_loop :cello do
  
  s = [4.0,5.0,6.0].choose
  p = celloSt.choose
  
  if p == 36
    midi p + [0,12].choose, sustain: s, channel: 4, port: port
    sleep s
    
  elsif p == 43
    5.times do
      midi p  + [0,12].choose, sustain: s/5, channel: 4, port: port
      sleep s/5
    end
    
  elsif p ==57
    6.times do
      midi p + [0,12].choose, sustain: s/6, channel: 4, port: port
      sleep s/6
    end
    
  end
end


live_loop :viola do
  
  s = [4.0,5.0,6.0].choose
  p = violaSt.choose
  
  if p == 48
    midi p + [0,12].choose, sustain: s, channel: 3, port: port
    sleep s
    
  elsif p == 55
    5.times do
      midi p + [0,12].choose, sustain: s/5, channel: 3, port: port
      sleep s/5
    end
    
  elsif p == 69
    6.times do
      midi p + [0,12].choose, sustain: s/6, channel: 3, port: port
      sleep s/6
    end
    
  end
end


live_loop :violin1 do
  
  s = [4.0,5.0,6.0].choose
  p = violinSt.choose
  
  if p == 55
    5.times do
      midi p + [0,12].choose, sustain: s/5, channel: 2, port: port
      sleep s/5
    end
    
  elsif p == 69
    6.times do
      midi p + [0,12].choose, sustain: s/6, channel: 2, port: port
      sleep s/6
    end
    
  elsif p ==76
    3.times do
      midi p + [0,12].choose, sustain: s/3, channel: 2, port: port
      sleep s/3
    end
    
  end
end

live_loop :violin2 do
  
  s = [4.0,5.0,6.0].choose
  p = violinSt.choose
  
  if p == 55
    5.times do
      midi p + [0,12].choose, sustain: s/5, channel: 1, port: port
      sleep s/5
    end
    
  elsif p == 69
    6.times do
      midi p + [0,12].choose, sustain: s/6, channel: 1, port: port
      sleep s/6
    end
    
  elsif p ==76
    3.times do
      midi p + [0,12].choose, sustain: s/3, channel: 1, port: port
      sleep s/3
    end
    
  end
end


live_loop :bass do
  
  s = [4.0,5.0,6.0].choose
  p = bassSt.choose
  
  if p == 28
    3.times do
      midi p + [0,12].choose, sustain: s/3, channel: 5, port: port
      sleep s/3
    end
    
  elsif p == 33
    6.times do
      midi p + [0,12].choose, sustain: s/6, channel: 5, port: port
      sleep s/6
    end
    
  elsif p == 43
    5.times do
      midi p + [0,12].choose, sustain: s/5, channel: 5, port: port
      sleep s/5
    end
    
  end
end