[_tb_system_call storage=system/_title_screen.ks]


;==============================
; タイトル画面
;==============================


[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]

;標準のメッセージレイヤを非表示


[tb_hide_message_window  ]

;タイトル表示


[bg  storage="op.png"  ]
*title

[glink  color="black"  text="はじめから"  x="566"  y="231"  size="20"  target="*start"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  text="つづきから"  x="565"  y="305"  size="20"  target="*load"  width=""  height=""  _clickable_img=""  ]
[s  ]

;-------ボタンが押されたときの処理


*start

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]

;--------ロードが押された時の処理


*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
