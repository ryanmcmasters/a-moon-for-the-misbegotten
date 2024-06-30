# moon_002


#port name
port = "iac_driver_bus_1"

#midi clear
midi_all_notes_off port: port, channel: [1,2,3,4,5]


#melody array
mel = [
  [62, 67, 64],
  [62, 67, 64, 69],
  [60, 57, 58],
  [56, 57]
]


#--------the score--------

live_loop :clusters do
  s = rrand(1,8.0)
  mel.choose.size.times do
    midi mel.choose.tick + [-24,-12,0,12,24].choose, sustain: s, port: port, channel: [1,4]
    sleep [0.25,0.5,0.75,1].choose
  end
  sleep s
end

live_loop :clusters2 do
  s = rrand(1,8)
  mel.choose.size.times do
    midi mel.choose.tick + [-24,-12,0,12,24].choose, sustain: s, port: port, channel: [2,5]
    sleep [0.25,0.5,0.75,1].choose
  end
  sleep s
end

live_loop :clusters3 do
  s = rrand(1,8)
  mel.choose.size.times do
    midi mel.choose.tick + [-24,-12,0,12,24].choose, sustain: s, port: port, channel: [3]
    sleep [0.25,0.5,0.75,1].choose
  end
  sleep s
end