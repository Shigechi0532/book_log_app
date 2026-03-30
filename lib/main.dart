import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // todo:appBarをnullにする。（今回はappbarを使用しない）
      appBar: null,
      body: Column(
        children: [
          // 上部ナビゲーション
          HeaderContainer(),

          // サイドメニュー（左側）
          // メインコンテンツ（右側）
        ],
      ),
    );
  }
}

// 上部ナビゲーションクラス
class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // タイトル
          Text(
            "読書履歴",
            style: GoogleFonts.playwriteDkUloopetGuides(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          Spacer(),

          // ダッシュボード画面遷移
          TextButton(
            onPressed: () {},
            child: Text(
              "ダッシュボード",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // ライブラリ画面遷移
          TextButton(
            onPressed: () {},
            child: Text(
              "ライブラリ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(width: 20),

          // 設定画面遷移アイコン
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.grey),
          ),

          // アカウント設定画面遷移アイコン
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text()]));
  }
}
