[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[cm  ]
[playbgm  volume="20"  time="1000"  loop="true"  storage="music.m4a"  ]
[bg  storage="backgraund.png"  time="1000"  ]
[chara_show  name="akane"  time="1000"  wait="true"  storage="chara/1/nyuutonwalk1.png"  width="224"  height="383"  left="911"  top="276"  reflect="false"  ]
[chara_show  name="yuta"  time="1000"  wait="true"  storage="chara/2/apple.png"  width="133"  height="161"  left="553"  top="103"  reflect="false"  ]
[wait  time="500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#リンゴ
ニュートンに気づいてもらうために、タイミング良くダイブするぞ！[p]
よーし！[p]

[_tb_end_text]

[tb_hide_message_window  ]
*start

[tb_eval  exp="f.shot=Math.floor(Math.random()*(5000-2000+1)+2000)"  name="shot"  cmd="="  op="r"  val="2000"  val_2="5000"  ]
[tb_eval  exp="f.quick=Math.floor(Math.random()*(1500-500+1)+500)"  name="quick"  cmd="="  op="r"  val="500"  val_2="1500"  ]
[tb_ptext_show  x="881"  y="25"  size="30"  color="0xffffff"  time="1000"  text="&f.shot"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1093"  y="29"  size="30"  color="0xffffff"  time="1000"  text="&f.quick"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[playbgm  volume="20"  time="1000"  loop="true"  storage="kodou.mp3"  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  text="準備はいい？"  target="*aizu"  x="544"  y="343"  width=""  height=""  _clickable_img=""  ]
[s  ]
*aizu

[clickable  storage="scene1.ks"  x="0"  y="0"  width="1280"  height="720"  target="*otetsuki"  ]
[tb_start_tyrano_code]
[wait time=&f.shot]
[_tb_end_tyrano_code]

[glink  color="pink"  storage="scene1.ks"  size="20"  text="ダイブ！！"  target="*dive"  x="571"  y="323"  width=""  height=""  _clickable_img=""  ]
[stopbgm  time="1000"  ]
*miss

[tb_start_tyrano_code]
[wait time=&f.quick]
[_tb_end_tyrano_code]

[chara_move  name="akane"  anim="true"  time="11000"  effect="linear"  wait="false"  left="114"  top="396"  width="195"  height="273"  ]
[wait  time="3000"  ]
[cm  ]
[chara_hide_all  time="0"  wait="true"  ]
[playbgm  volume="20"  time="1000"  loop="false"  storage="jidaigeki.mp3"  ]
[tb_image_show  time="3000"  storage="default/apple2.png"  width="1280"  height="720"  x="0"  y="0"  _clickable_img=""  name="img_28"  ]
[tb_image_hide  time="0"  ]
[playbgm  volume="20"  time="1000"  loop="true"  storage="gohan_no_takikata_sensyuken.mp3"  ]
[bg  time="1000"  method="crossfade"  storage="未発見.png"  ]
[tb_ptext_show  x="333"  y="326"  size="30"  color="0xffffff"  time="1000"  text="気づいてもらえなかった...大発見ならず..."  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[stopbgm  time="1000"  ]
[jump  storage="title_screen.ks"  target=""  ]
*otetsuki

[cm  ]
[stopbgm  time="1000"  ]
[chara_hide  name="akane"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_hide  name="yuta"  time="1000"  wait="true"  pos_mode="true"  ]
[bg  time="1000"  method="crossfade"  storage="未発見.png"  ]
[playbgm  volume="20"  time="1000"  loop="true"  storage="gohan_no_takikata_sensyuken.mp3"  ]
[tb_ptext_show  x="359"  y="292"  size="30"  color="0xffffff"  time="1000"  text="気づいてもらえなかった...大発見ならず..."  anim="false"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[stopbgm  time="1000"  ]
[jump  storage="title_screen.ks"  target=""  ]
*dive

[chara_move  name="yuta"  anim="false"  time="300"  effect="linear"  wait="true"  left="550"  top="484"  width="133"  height="161"  ]
*clear

[chara_mod  name="akane"  time="600"  cross="true"  storage="chara/1/nyuutonwalk2.png"  ]
[cm  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[wait_cancel]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[chara_hide  name="akane"  time="1000"  wait="true"  pos_mode="true"  ]
[playbgm  volume="100"  time="1000"  loop="false"  storage="jidaigeki.mp3"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Happy_Go_Whistle!.mp3"  ]
[bg  time="1000"  method="crossfade"  storage="success.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#リンゴ
気づいてもらえた！[p]
大発見だ！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_ptext_show  x="536"  y="280"  size="30"  color="0xffffff"  time="1000"  text="早撃ち成功！"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[tb_ptext_show  x="497"  y="262"  size="40"  color="0xffffff"  time="1000"  text="ゲームクリア！"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[stopbgm  time="1000"  ]
[jump  storage="title_screen.ks"  target=""  ]
