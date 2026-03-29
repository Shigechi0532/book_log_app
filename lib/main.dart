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
          HeaderContainer(title: "ホーム"),

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
  final String title;

  const HeaderContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.blue,
      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}
