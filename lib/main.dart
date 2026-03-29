import 'package:flutter/material.dart';

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
          // サイドメニュー（左側）
          // todo:NavigationRailからContainerの中にColumnを入れる構成に変更
          // todo:上部にタイトル表示
          HeaderContainer(),

          // メインコンテンツ
          // todo:上部に下記を表示
          // 「ダッシュボード」「ライブラリー」「検索バー」「設定アイコン」
          Expanded(
            child: ListView(
              children: List.generate(
                30,
                (index) => ListTile(title: Text('アイテム $index')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
            "ロゴ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

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
