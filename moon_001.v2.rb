# moon_001


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

#descants
live_loop :melL do
  it = 0
  mel.size.times do
    i = 0
    mel[it].size.times do
      midi mel[it][i] + 24, sustain: 3, channel: 1, port: port
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
      midi mel[it][i] + 24, sustain: 3, channel: 2, port: port
      sleep [1,1.5,1.75].choose
      i = i + 1
    end
    it = it + 1
    sleep [2,1.5].choose
  end
end

#center melody
live_loop :melC do
  it = 0
  mel.size.times do
    i = 0
    mel[it].size.times do
      midi mel[it][i], sustain: 4, channel: 3, port: port
      sleep 1
      i = i + 1
    end
    it = it + 1
    sleep [2,3].choose
  end
end


#drones
live_loop :drone1 do
  s = [2,4,6].choose
  midi ([38,45].choose + [0,12,24].choose), sustain: s, channel: 4, port: port
end

live_loop :drone2 do
  s = [2,4,6].choose
  midi ([38,45].choose + [0,12,24].choose), sustain: s, channel: 5, port: port
  sleep s
end


