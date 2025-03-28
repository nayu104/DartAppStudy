import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:vibration/vibration.dart';

class AddFriend extends StatefulWidget {
  const AddFriend({super.key});

  @override
  State<AddFriend> createState() => _AddFriend();
}

void vibratePhone() {
  Vibration.vibrate(duration: 30); //バイブレーション関数
}

// State クラス（画面の状態を管理）
class _AddFriend extends State<AddFriend> {
  int user_id = 111222333;

  String getUserID() => NumberFormat("#,###").format(user_id); //三桁ごとにカンマ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF404040),
      resizeToAvoidBottomInset: false, // ウィジェットを勝手に押し上げないようにする
      //appBarの領域に入ると文字が途切れる
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),//高さ40ピクセルのサイズ
        //AppBarの高さ変更時,キーボード入力時に「フレンド検索」が埋もれるから
        child: AppBar(
          backgroundColor: const Color(0xFF404040),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
        ),
      ),

      body: Center(
    child: Transform.translate(
          offset: Offset(0, -130), //Offset(dx,dy)　中心を軸にx,y座標で位置調節
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "フレンド検索",
                style: GoogleFonts.inter(
                  fontSize: 22,
                  letterSpacing: 2.2,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 0),
              Text(
                "IDを入力するとユーザーにフレンド申請できます！",
                style: GoogleFonts.inter(
                  fontSize: 10,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 300, //幅
                height: 50, //高さ50
                child: TextField(
                  style: GoogleFonts.inter(
                    //入力時のフォント
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    //入力フィールドないしicon
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    //入力領域の余白を０
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, //入力モードの色と枠線幅
                        width: 1.5,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "あなたのID：${getUserID()}",
                    style: GoogleFonts.inter(
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(//押した時に一瞬だけ✓マークいれたい未完成
                    onPressed: () {
                      vibratePhone();
                    },
                    icon: Icon(Icons.copy, color: Colors.white),
                    highlightColor: Colors.black,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),//ボタン内の余白指定,整形のため
                ),
                child: Text(//text内で背景色指定するとマーカーになる
                  "フレンド申請送信",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    letterSpacing: 2.2,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
