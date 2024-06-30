# moon_006


#port name
port = "iac_driver_bus_1"

#midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]


#rotational arrays
ra = [
  [0,4,7,9],
  [0,2,4,6,7],
  [0,2,4,5,7],
  [0,2,3,5,7],
  [0,3,5,7],
  [0,3,6,8],
  [0,2,3,7],
]


#--------the score--------

#array controller
live_loop :control do
  
  $it = 0
  
  ra.size.times do
    sleep [4,8,16].choose
    $it = $it + 1
  end
end


live_loop :chords do
  
  p = ra[$it].tick
  s = [0.25,0.5,1].choose
  
  rrand_i(2,6).times do
    midi p + 50 + [0,12,24].choose, sustain: s*2, channel: 1, port: port
    sleep s
  end
end


live_loop :chords2 do
  
  p = ra[$it].tick
  s = [0.25,0.5,1].choose
  
  rrand_i(2,6).times do
    midi p + 50 + [0,12,24].choose, sustain: s*2, channel: 2, port: port
    sleep s
  end
end


live_loop :chords3 do
  
  p = ra[$it].tick
  s = [0.25,0.5,1].choose
  
  rrand_i(2,6).times do
    midi p + 50 + [0,12,24].choose, sustain: s*2, channel: 3, port: port
    sleep s
  end
  
end

live_loop :cello do
  
  midi ra[$it].choose + 50, sustain: 3, channel: 4, port: port
  sleep 3
  
end


live_loop :bass do
  
  midi ra[$it].choose + 38, sustain: 4, channel: 5, port: port
  sleep 4
  
end





