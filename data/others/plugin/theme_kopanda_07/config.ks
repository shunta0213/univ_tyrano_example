; 2018/07/08 @ko10panda edit
;=========================================
; コンフィグ モード　画面作成
;=========================================

	[layopt layer="message0" visible="false"]
	[clearfix]
	[stop_keyconfig]
	[free_layermode time="100" wait="true"]
	[reset_camera time="100" wait="true"]

	[iscript]
	$(".layer_camera").empty();
	[endscript]

	[hidemenubutton]

	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	tf.current_bgm_vol    = parseInt(TG.config.defaultBgmVolume); // BGM音量
	tf.current_se_vol     = parseInt(TG.config.defaultSeVolume); // SE音量
	tf.current_ch_speed   = parseInt(TG.config.chSpeed); // テキスト表示速度
	tf.current_auto_speed = parseInt(TG.config.autoSpeed); // オート時のテキスト表示速度

	tf.text_skip ="ON"; // 未読スキップ
	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	[endscript]

	[iscript]

	/* 画像類のパス */
	tf.img_path    = '../others/plugin/theme_kopanda_07/image/config/';
	tf.btnPath_off = tf.img_path + 'c_btn.gif';

	[endscript]

[cm]


[bg storage="&tf.img_path +'bg_config.png'" time="100"]

[button fix="true" graphic="&tf.img_path + 'back.png'" enterimg="&tf.img_path + 'back2.png'" target="*backtitle" x="798" y="10"]

[jump target="*config_page"]


*config_page

;------------------------------------------------------------------------------------------------------
; BGM音量
;------------------------------------------------------------------------------------------------------
	[button name="bgmvol,bgmvol_10"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="317" y="154" exp="tf.current_bgm_vol = 10"]
	[button name="bgmvol,bgmvol_20"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="359" y="154" exp="tf.current_bgm_vol = 20"]
	[button name="bgmvol,bgmvol_30"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="401" y="154" exp="tf.current_bgm_vol = 30"]
	[button name="bgmvol,bgmvol_40"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="443" y="154" exp="tf.current_bgm_vol = 40"]
	[button name="bgmvol,bgmvol_50"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="482" y="154" exp="tf.current_bgm_vol = 50"]
	[button name="bgmvol,bgmvol_60"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="524" y="154" exp="tf.current_bgm_vol = 60"]
	[button name="bgmvol,bgmvol_70"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="565" y="154" exp="tf.current_bgm_vol = 70"]
	[button name="bgmvol,bgmvol_80"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="607" y="154" exp="tf.current_bgm_vol = 80"]
	[button name="bgmvol,bgmvol_90"  fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="648" y="154" exp="tf.current_bgm_vol = 90"]
	[button name="bgmvol,bgmvol_100" fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="689" y="154" exp="tf.current_bgm_vol = 100"]

;	BGMミュート
	[button name="bgmvol,bgmvol_0"   fix="true" target="*vol_bgm_change" graphic="&tf.btnPath_off" width="48" height="48" x="816" y="154" exp="tf.current_bgm_vol = 0"]

;------------------------------------------------------------------------------------------------------
; SE音量
;------------------------------------------------------------------------------------------------------
	[button name="sevol,sevol_10"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="317" y="226" exp="tf.current_se_vol = 10"]
	[button name="sevol,sevol_20"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="359" y="226" exp="tf.current_se_vol = 20"]
	[button name="sevol,sevol_30"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="401" y="226" exp="tf.current_se_vol = 30"]
	[button name="sevol,sevol_40"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="443" y="226" exp="tf.current_se_vol = 40"]
	[button name="sevol,sevol_50"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="482" y="226" exp="tf.current_se_vol = 50"]
	[button name="sevol,sevol_60"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="524" y="226" exp="tf.current_se_vol = 60"]
	[button name="sevol,sevol_70"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="565" y="226" exp="tf.current_se_vol = 70"]
	[button name="sevol,sevol_80"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="607" y="226" exp="tf.current_se_vol = 80"]
	[button name="sevol,sevol_90"  fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="648" y="226" exp="tf.current_se_vol = 90"]
	[button name="sevol,sevol_100" fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="689" y="226" exp="tf.current_se_vol = 100"]

;	SEミュート
	[button name="sevol,sevol_0"   fix="true" target="*vol_se_change" graphic="&tf.btnPath_off" width="48" height="48" x="816" y="226" exp="tf.current_se_vol = 0"]

;------------------------------------------------------------------------------------------------------
; テキスト速度
;------------------------------------------------------------------------------------------------------
	[button name="ch,ch_100" fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="317" y="298" exp="tf.set_ch_speed = 100"]
	[button name="ch,ch_80"  fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="359" y="298" exp="tf.set_ch_speed = 80"]
	[button name="ch,ch_50"  fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="401" y="298" exp="tf.set_ch_speed = 50"]
	[button name="ch,ch_40"  fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="443" y="298" exp="tf.set_ch_speed = 40"]
	[button name="ch,ch_30"  fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="482" y="298" exp="tf.set_ch_speed = 30"]
	[button name="ch,ch_25"  fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="524" y="298" exp="tf.set_ch_speed = 25"]
	[button name="ch,ch_20"  fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="565" y="298" exp="tf.set_ch_speed = 20"]
	[button name="ch,ch_11"  fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="607" y="298" exp="tf.set_ch_speed = 11"]
	[button name="ch,ch_8"   fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="648" y="298" exp="tf.set_ch_speed = 8"]
	[button name="ch,ch_5"   fix="true" target="*ch_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="689" y="298" exp="tf.set_ch_speed = 5"]

;------------------------------------------------------------------------------------------------------
; オート速度
;------------------------------------------------------------------------------------------------------
	[button fix="true" name="auto,auto_5000" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="317" y="370" exp="tf.set_auto_speed = 5000;tf.text_auto = 0"]
	[button fix="true" name="auto,auto_4500" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="359" y="370" exp="tf.set_auto_speed = 4500;tf.text_auto = 1"]
	[button fix="true" name="auto,auto_4000" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="401" y="370" exp="tf.set_auto_speed = 4000;tf.text_auto = 2"]
	[button fix="true" name="auto,auto_3500" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="443" y="370" exp="tf.set_auto_speed = 3500;tf.text_auto = 3"]
	[button fix="true" name="auto,auto_3000" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="482" y="370" exp="tf.set_auto_speed = 3000;tf.text_auto = 4"]
	[button fix="true" name="auto,auto_2500" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="524" y="370" exp="tf.set_auto_speed = 2500;tf.text_auto = 5"]
	[button fix="true" name="auto,auto_2000" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="565" y="370" exp="tf.set_auto_speed = 2000;tf.text_auto = 6"]
	[button fix="true" name="auto,auto_1300" target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="607" y="370" exp="tf.set_auto_speed = 1300;tf.text_auto = 7"]
	[button fix="true" name="auto,auto_800"  target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="648" y="370" exp="tf.set_auto_speed = 800;tf.text_auto = 8"]
	[button fix="true" name="auto,auto_500"  target="*auto_speed_change" graphic="&tf.btnPath_off" width="48" height="48" x="689" y="370" exp="tf.set_auto_speed = 500;tf.text_auto = 9"]

;------------------------------------------------------------------------------------------------------
; 未読スキップ
;------------------------------------------------------------------------------------------------------
;	未読スキップ-ON
	[button name="unread_on"  fix="true" target="*skip_on"  graphic="&tf.btnPath_off" width="152" height="52" x="304" y="437"]

;	未読スキップ-OFF
	[button name="unread_off" fix="true" target="*skip_off" graphic="&tf.btnPath_off" width="152" height="52" x="464" y="437"]

;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------

	[iscript]

		$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/others/plugin/theme_kopanda_07/image/config/set1.png");
		$(".sevol_"+tf.current_se_vol).attr("src","data/others/plugin/theme_kopanda_07/image/config/set2.png");
		$(".ch_"+tf.current_ch_speed).attr("src","data/others/plugin/theme_kopanda_07/image/config/set1.png");
		$(".auto_"+tf.current_auto_speed).attr("src","data/others/plugin/theme_kopanda_07/image/config/set2.png");

		if(tf.text_skip == 'OFF'){
			$(".unread_off").attr("src","data/others/plugin/theme_kopanda_07/image/config/skip_off_set.png");
			}else{
				$(".unread_on").attr("src","data/others/plugin/theme_kopanda_07/image/config/skip_on_set.png");
				}
	[endscript]

	[test_message_start]

	[s]

;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*backtitle
[cm]

	[clearfix]
	[start_keyconfig]
	[clearstack]
	[awakegame]

;================================================================================

; ボタンクリック時の処理

;=========================================
; BGM音量変更
;=========================================
*vol_bgm_change

[iscript]

	$(".bgmvol").attr("src","data/others/plugin/theme_kopanda_07/image/config/c_btn.gif");
	$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/others/plugin/theme_kopanda_07/image/config/set1.png");

[endscript]

[bgmopt volume="&tf.current_bgm_vol"]

[return]

;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_change

	[iscript]

		$(".sevol").attr("src","data/others/plugin/theme_kopanda_07/image/config/c_btn.gif");
		$(".sevol_"+tf.current_se_vol).attr("src","data/others/plugin/theme_kopanda_07/image/config/set2.png");

	[endscript]

	[seopt volume="&tf.current_se_vol"]

[return]

;---------------------------------------------------------------------------------
; テキスト速度
;--------------------------------------------------------------------------------
*ch_speed_change

	[iscript]

		$(".ch").attr("src","data/others/plugin/theme_kopanda_07/image/config/c_btn.gif");
		$(".ch_"+tf.set_ch_speed).attr("src","data/others/plugin/theme_kopanda_07/image/config/set1.png");

	[endscript]

	[configdelay speed="&tf.set_ch_speed"]

	[test_message_reset]

[return]

;--------------------------------------------------------------------------------
; オート速度
;--------------------------------------------------------------------------------
*auto_speed_change

	[iscript]

		$(".auto").attr("src","data/others/plugin/theme_kopanda_07/image/config/c_btn.gif");
		$(".auto_"+tf.set_auto_speed).attr("src","data/others/plugin/theme_kopanda_07/image/config/set2.png");

	[endscript]

	[autoconfig speed="&tf.set_auto_speed"]

[return]

;=========================================
; 未読スキップOFF化
;=========================================
*skip_off

	[iscript]

		$(".unread_off").attr("src","data/others/plugin/theme_kopanda_07/image/config/skip_off_set.png");
		$(".unread_on" ).attr("src","data/others/plugin/theme_kopanda_07/image/config/c_btn.gif");
		tf.text_skip = "OFF";

	[endscript]

	[config_record_label skip="false"]

[return]

;=========================================
; 未読スキップON化
;=========================================
*skip_on

	[iscript]

		$(".unread_off").attr("src","data/others/plugin/theme_kopanda_07/image/config/c_btn.gif");
		$(".unread_on" ).attr("src","data/others/plugin/theme_kopanda_07/image/config/skip_on_set.png");
		tf.text_skip = "ON";

	[endscript]

	[config_record_label skip="true"]

[return]
