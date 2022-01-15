#
# 冷雨夜 贝斯solo...
#
# Coded by CHENJJ in Sonic-Pi
#

# 雨声
with_fx :reverb, mix: 0.5 do
  3.times do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 3), cutoff_slide: rrand(0, 3), cutoff: rrand(60, 80), pan: rrand(-1, 1), pan_slide: 1, amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 115)
    sleep rrand(2, 3)
  end
end

use_bpm 82
use_synth :piano

sample :guit_em9
sleep 8

#大小鼓伴奏
live_loop :drums do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

#伴奏
live_loop :bass do
  #with_fx :wobble do
  #with_fx :slicer do
  with_fx :reverb, mix: 0.5, room: 0.9 do
    use_synth_defaults amp:0.2
    # 冷雨夜吉他谱，来自 http://www.echangwang.com/pic/06/6357.html
    play_pattern_timed [:F3, :G3, :A3, :D4, :E4, :D4, :A3, :F3], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]
  end
  #end
  #end
end

# 冷雨夜演唱会贝斯谱，来自 http://www.jitafen.com/pu/beisi/9532.html
play_pattern_timed [:A2, :A2, :Ab2, :G2], [1.5, 0.5, 0.5, 2]
play_pattern_timed [:G2, :G2, :Fs2, :F2], [1.5, 0.5, 0.5, 2]
play_pattern_timed [:F2, :F2, :E2, :D2, :C2, :B1, :C2], [1.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]
play_pattern_timed [:E2, :Fs2, :A2, :B2], [1, 1, 1, 1]
play_pattern_timed [:C3, :C3, :B2, :A2], [1.5, 0.5, 0.5, 2]
play_pattern_timed [:A2, :A2, :G2, :F2], [1.5, 0.5, 0.5, 2]
play_pattern_timed [:F2, :E2, :D2, :C2, :B1, :E2], [0.5, 0.5, 0.5, 0.5, 1, 1]

play_pattern_timed [:A1, :B1, :C2, :E2, :F2, :G2, :A2, :B2, :C3, :B2, :A2, :G2, :C2, :G2, :E2], [0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25]
play_pattern_timed [:F2, :C2, :D2, :G2, :D2, :G2], [1.5, 0.5, 0.5, 1.5, 0.5, 0.5]
# 伴奏鼓声，一开始鼓手在转鼓槌，知道这一节才开始切入
live_loop :rummut do
  sample :bd_zome
  sleep 4
end
play_pattern_timed [:E2, :E2, :A2], [1.5, 1, 2]
play_pattern_timed [:Gs2, :B2], [2, 2]
play_pattern_timed [:F2, :G2, :A2], [1, 1, 2]
play_pattern_timed [:E2, :D2, :D2, :C2, :E2, :F2, :Fs2], [1.5, 1, 1, 0.25, 0.25, 0.25, 0.25]

play_pattern_timed [:G2, :A2, :A2, :B2, :C3], [1.125, 0.25, 0.5, 0.5, 2]
play_pattern_timed [:E2, :B2, :B2, :C3, :A2, :G2, :F2, :E2, :G2, :E2, :D2, :C2, :B1], [0.25, 1.125, 1, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2]
play_pattern_timed [:B1, :C2, :Db2, :Ds2, :B2, :E2, :B2, :B2, :B2, :C3, :C3, :C3, :D3, :D3, :D3], [0.16, 0.16, 0.16, 0.16, 0.16, 0.2, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25]
play_pattern_timed [:E3, :D3, :D3, :B2, :A2], [1.5, 1, 1.5, 0.5, 0.5]

play_pattern_timed [:G2, :F2, :E2, :C2, :D2, :C2, :D2, :C2], [0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.25, 2]
play_pattern_timed [:Gs1, :B1, :D2, :E2, :G2, :E2, :B2, :G2, :B1, :D2, :E2, :G2, :E2, :B2], [0.16, 0.16, 0.16, 0.16, 0.16, 0.2, 1, 0.16, 0.16, 0.16, 0.16, 0.16, 0.2, 1]
play_pattern_timed [:E2, :F2, :A2, :B2, :D2, :E2, :D2, :C2, :E2, :F2, :E2, :E1, :F1, :G2, :F2, :D2, :F2, :A1, :G1, :E2, :G2, :A2, :D2], [0.25, 0.25, 0.25, 0.25, 0.14, 0.14, 0.14, 0.14, 0.14, 0.14, 0.16, 0.16, 0.16, 0.16, 0.16, 0.16, 0.2, 0.16, 0.16, 0.16, 0.16, 0.16, 0.2]

play_pattern_timed [:E2, :A2, :E3, :D3, :A2, :C3], [1.5, 0.5, 0.5, 1.5, 0.5, 0.5]
play_pattern_timed [:B2, :G2, :G2, :B2, :A2, :A2, :B2, :E3, :B2, :E2], [1.125, 0.25, 0.5, 0.25, 0.25, 1, 0.25, 0.25, 0.25, 0.25]
play_pattern_timed [:D2, :D3, :A2, :D2, :C2, :C3, :G2, :C3, :B2, :C2, :C3, :A2, :F2], [0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 1, 0.25, 0.25, 0.25, 0.25]
play_pattern_timed [:D2, :F2, :D2, :E2, :G2, :A2, :B2, :B2, :B2, :A2, :A2, :A2], [0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25]

play_pattern_timed [:F2, :B1, :B1, :C2, :C2, :D2, :C2, :C2, :D2, :D2], [1.5, 0.25, 0.25, 0.25, 0.25, 1.5, 0.25, 0.25, 0.25, 0.25]
play_pattern_timed [:E2, :D2, :D2, :E2, :E2, :F2, :A1, :C2, :E2, :C2, :E2, :C2], [1.5, 0.25, 0.25, 0.25, 0.25, 1, 0.16, 0.16, 0.16, 0.16, 0.16, 0.2]
play_pattern_timed [:A1, :C2, :E2, :F2, :G2, :G2, :G2, :A2, :A2, :A2, :A2, :E2], [0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 1.125, 0.25]
play_pattern_timed [:A2, :E3, :E3, :E3, :E3, :A2, :E3, :D3], [0.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 2]

play_pattern_timed [:G2, :D3, :D3, :D3, :D3, :G2, :D3, :C3, :C3], [0.5, 0.25, 0.25, 0.2, 0.2, 0.2, 0.2, 0.2, 2]
play_pattern_timed [:F2, :C3, :C3, :C3, :C3, :F2, :C3, :B2], [0.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 2]
play_pattern_timed [:Gs2, :B2, :D2, :F2, :D2, :F2, :G2, :B2, :B2, :B2, :B2, :A2, :A2, :A2], [0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25]
play_pattern_timed [:F2, :F2, :G2, :G2, :G2, :A2, :A2], [1.5, 0.5, 0.5, 0.5, 0.25, 0.25, 1]

play_pattern_timed [:E2, :E2, :F2, :F2, :F2, :G2, :G2], [1.5, 0.5, 0.5, 0.5, 0.25, 0.25, 1]
play_pattern_timed [:D2, :D2, :E2, :E2, :E2, :F2, :F2], [1.5, 0.5, 0.5, 0.5, 0.25, 0.25, 1]
play_pattern_timed [:A1, :B1, :C2, :E2], [1, 1, 1, 1]



