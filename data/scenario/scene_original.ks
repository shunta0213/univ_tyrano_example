;Live2D 3.x サンプルゲーム
*start

;Live2Dプラグインの読み込み
;デモでは直接coreプラグインを読み込んでいるが、実際は
[plugin name="live2d"]

[cm  ]
[clearfix]
[start_keyconfig]

;背景を表示
[bg storage="room.jpg" time="100"]

;メッセージテーマをロード
[plugin name="theme_kopanda_07"]
[add_theme_button]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]

;yamato
[chara_new name="yamato" storage="chara/yamato/normal.png" jname="やまと" ]

Live2Dプラグインの動作がわかるサンプルです。[p]
Live2D 4.0 はティラノスクリプトV5以降のバージョンが必要です。[p]

;Live2Dモデルの読み込み
Live2Dモデルの読み込み中。。。
[live2d_new name="haru" model_id="Haru" lip=true jname="ハル"]
[live2d_new name="hiyori" model_id="Hiyori" y=-0.5 x=-0.3 lip=true jname="ひより"]
[wait time=200]

;Live2Dモデルの表示
[live2d_show name="haru" y=-0.8 x=0 scale=2.5 ]

[wait time=400]

Live2Dモデルが表示されました[p]

モーションを再生します。[p]

モーション再生その１[p]
[live2d_motion name="haru" mtn="Test" no=0 ]
[wait time=3000 ]

モーション再生その２[p]
[live2d_motion name="haru" mtn="Test" no=1 ]
[wait time=3000 ]

いかがでしょう。モーションが再生されましたね？[p]

続いて表情（Expression）を変更します[p]

[live2d_expression name="haru" expression="f07"]

変更されました。[p]

次にキャラクターのアイドルモーションを変更します[p]
[live2d_mod name="haru" idle="Test" ]

変更されました。[p]
アイドルモーションをもとに戻します[p]
[live2d_mod name="haru" idle="Idle" ]

立ち位置を変更します。左に移動します。[p]
[live2d_mod name="haru" x="-0.5" ]
続いて、右に移動します[p]
[live2d_mod name="haru" x="0.5" ]

フェードイン、フェードアウト機能と併用します。[p]

[live2d_fadeout time=1000 ]
[live2d_mod name="haru" y=-1.6 x="0" scale=3.5 ]

[live2d_fadein time=1000 ]

拡大して表示されました。元の位置に戻ります[p]

[live2d_fadeout time=1000]
[live2d_mod name="haru" y="-0.8" x="0" scale=2.5 ]
[live2d_fadein time=1000]

いかがでしょう。続いてもう１人モデルを表示します。[p]

[live2d_mod name="haru" x=-0.3]
[live2d_show name="hiyori" y=-0.8 x=0.3 scale=2.5 ]

ひよりが表示されました。[p]

リップ（口）の動きについて確認します[p]
ティラノの文法と連動して、口を動かすことができます。[p]

#ハル
今はハルがしゃべってるよ。[p]
いい感じに喋れてるかな[p]

#ひより
わたしはひより！。ティラノ大好き。[p]
あああああああああああああ[p]

#やまと
こ、こわいよ。[p]

[live2d_fadeout]
[live2d_hide name="haru"] 
[live2d_hide name="hiyori"] 

Live2D 4.0モデルを読み込みます。[p]

[live2d_new name="rice" model_id="rice_pro_t01" jname="ライス"]
[wait time=200]

;Live2Dモデルの表示
[live2d_show name="rice" y=-0.8 x=0 scale=2.5 ]

[live2d_fadein]

#ライス

モーションをその１を再生します[p]
[live2d_motion name="rice" mtn="TapBody" no=0]
再生しました[p]

モーションをその２を再生します[p]
[live2d_motion name="rice" mtn="TapBody" no=1]
再生しました[p]

モーションをその3を再生します[p]
[live2d_motion name="rice" mtn="TapBody" no=2]
再生しました[p]



Live2Dプラグインを使用するには、Live2Dのライセンス規約に同意する必要があります。[p]
また、同梱されているモデルもLive2D社に帰属しますので、Live2D規約をよくご確認ください。[p]
利用素材テーマ『空想曲線』テーマ一括変換プラグイン その７[p]
不明な点や機能の追加が必要な場合は、お気軽にご連絡ください。[p]
このゲームのスクリプトはプロジェクトをダウンロードできるのでぜひ、参考にしてください。

[s]