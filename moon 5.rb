# moon 005

#open strings
celloSt = [36, 43, 57]
violaSt = [48, 55, 69]
violinSt = [55, 69, 76]
bassSt = [28,33,43]

#amplitude
a = 0.2

#tempo
use_bpm 20


#the score.
live_loop :cello do
  p = celloSt.choose
  if p == 36
    play p, pan: 1, amp: a, sustain: 4
    sleep 4
  elsif p == 43
    5.times do
      play p, pan: 1, amp: a, sustain: 4.0/5
      sleep 4.0/5
    end
  elsif p ==57
    6.times do
      play p, pan: 1, amp: a, sustain: 4.0/6
      sleep 4.0/6
    end
  end
end

live_loop :viola do
  p = violaSt.choose
  if p == 48
    play p, pan: 0.5, amp: a, sustain: 4
    sleep 4
  elsif p == 55
    5.times do
      play p, pan: 0.5, amp: a, sustain: 4.0/5
      sleep 4.0/5
    end
  elsif p == 69
    6.times do
      play p, pan: 0.5, amp: a, sustain: 4.0/6
      sleep 4.0/6
    end
  end
end

live_loop :violin1 do
  p = violinSt.choose
  if p == 55
    5.times do
      play p, pan: -1, amp: a, sustain: 4.0/5
      sleep 4.0/5
    end
  elsif p == 69
    6.times do
      play p, pan: -1, amp: a, sustain: 4.0/6
      sleep 4.0/6
    end
  elsif p ==76
    3.times do
      play p, pan: -1, amp: a, sustain: 4.0/3
      sleep 4.0/3
    end
  end
end

live_loop :violin2 do
  p = violinSt.choose
  if p == 55
    5.times do
      play p, pan: -0.5, amp: a, sustain: 4.0/5
      sleep 4.0/5
    end
  elsif p == 69
    6.times do
      play p, pan: -0.5, amp: a, sustain: 4.0/6
      sleep 4.0/6
    end
  elsif p ==76
    3.times do
      play p, pan: -0.5, amp: a, sustain: 4.0/3
      sleep 4.0/3
    end
  end
end

live_loop :bass do
  p = bassSt.choose
  if p == 28
    3.times do
      play p, pan: 0, amp: a, sustain: 4.0/3
      sleep 4.0/5
    end
  elsif p == 33
    6.times do
      play p, pan: 0, amp: a, sustain: 4.0/6
      sleep 4.0/6
    end
  elsif p == 43
    5.times do
      play p, pan: 0, amp: a, sustain: 4.0/6
      sleep 4.0/6
    end
  end
end


