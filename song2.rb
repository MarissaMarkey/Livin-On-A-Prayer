#transition
live_loop:isolatedvocals do
  sample ending, amp: 2
  sleep 1
  stop
end
sleep 11

#my_second_song
live_loop:secondintro do
  sample secondintro, amp: 2
  sleep 1
  stop
end
sleep 9.5
live_loop:startbeat do
  13.times do
    use_synth:piano
    notes :e2, :e3, :b2, :d2, :e2, :e2, :b2, :d2
  end
  stop
end
sleep 4
live_loop:array do
  5.times do
    use_synth:piano
    sample notess[i], amp: 2
    sleep 4
    i=i+1
    print "hi"
  end
  stop
end
sleep 4
background_notes
sleep 2
sample blendingdrums
sleep 0.75
sample drumsolo
print sample_duration drumsolo
sleep 15.2
live_loop:chorus do
  sample chorus
  stop
end
live_loop:startbeat2 do
  x=1
  3.times do
    use_synth:piano
    notes :e2, :e3, :b2, :d2, :e2, :e2, :b2, :d2
    sleep 1.8
  end
  stop
end
live_loop:random do
  8.times do
    sample [:drum_heavy_kick, :drum_bass_hard,  :drum_tom_mid_hard].choose
    sleep 2
  end
  stop
end
sleep 30

#fadeout
x=2.5
live_loop:ending do
  5.times do
    sample livinbeatdrums, amp: x
    sleep 4
    x=x-0.5
    if x<0.5
      stop
    end
  end
  stop
end
background_notes