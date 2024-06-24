# moon 006

ra = [
  [0,4,7,9].ring,
  [0,1,3,5].ring,
  [0,4,7].ring,
  [0,3,7,8].ring,
  [0,4,5,7].ring,
  [0,2,3,7].ring,
  [0,2,4,7].ring
]

a = 0.2

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
    play p + 50 + [0,12,24].choose, pan: -1, amp: a, sustain: s
    sleep s
  end
  
end

live_loop :chords2 do
  
  p = ra[$it].tick
  s = [0.25,0.5,1].choose
  rrand_i(2,6).times do
    play p + 50 + [0,12,24].choose, pan: 1, amp: a, sustain: s
    sleep s
  end
  
end

live_loop :chords3 do
  
  p = ra[$it].tick
  s = [0.25,0.5,1].choose
  
  rrand_i(2,6).times do
    play p + 50 + [0,12,24].choose, pan: 0, amp: a, sustain: s
    sleep s
  end
  
end

live_loop :cello do
  
  play ra[$it].choose + 50, sustain: 3, amp: 0.5
  sleep 3
  
end

live_loop :bass do
  
  play ra[$it].choose + 38, sustain: 4, amp: 0.5
  sleep 4
  
end





