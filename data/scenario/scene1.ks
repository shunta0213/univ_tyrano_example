*start

; Live2D Plugin
[plugin name="live2d" ]

[cm ]
[clearfix ]
[start_keyconfig]

[bg storage="rouka.jpg" time="100"  ]

; Message Theme
[plugin name="theme_kopanda_07" ]
[add_theme_button]

; Message Window
@layopt layer=message0 visible=true

; Models
[live2d_new name="mark" model_id="mark_free_t04" jname="マーク"]
[live2d_new name="haru" model_id="Haru" lip=true jname="ハル先生"]
[live2d_new name="hiyori" model_id="Hiyori" y=-0.5 x=-0.3 lip=true jname="ひより"]

; Senario
[live2d_show name="mark" y=0.1 x=0 scale=2 ]
こんにちは、私はマークです。[p ]
[live2d_motion name="mark" mtn="Tap" no=0]
このゲームはマークを大学合格への導くゲームです。
適切な選択肢を選んで目指せ 〇〇大学へ！[p ]

[mask time="1000" ]
[bg storage="room.jpg" time="1000"  ]
[live2d_mod name="mark" x="0.7" y="0" scale=1.8 ]
[live2d_show name="haru" y=-0.9 x=-0.7 scale=2.5 ]
[mask_off]

#ハル先生
はーいみんなーすわってー[p]
[wait time=300]
それでは帰りの会を始めます。[p]
明日から高校最後の夏休みですが、ハメを外しすぎないように楽しんでくださいね。[p ]
あ！あと、みなさん受験勉強を忘れずに〜[p]

#全員
わー！がっこうおわりだー！
なっつやーすみ〜！[p]

[mask time="1000"]
;credit: みんちりえ（ https://min-chi.material.jp/ ）
[bg storage="room_evening.jpg" time="100" ]
[live2d_hide name="haru" ]
[live2d_mod name="mark" y=-0.1 x=0 scale=2 ]
[mask_off]

#マーク
はぁあ、明日から夏休みかぁ[p]
受験勉強やらんきゃいけないな〜[p]
おかあさんに予備校の話をしてみよう[p]

#マーク
[link storage="cram_school/go.ks" target="*start"  ] ▶︎予備校へいく [endlink][r]
[link storage="cram_school/not_go.ks" target="*start"  ] ▶行かない [endlink][r]
