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
      appBar: AppBar(title: const Text('読書記録')),
      body: Row(
        children: [
          // サイドメニュー（左側）
          // todo:NavigationRailからContainerの中にColumnを入れる構成に変更
          // todo:上部にタイトル表示
          NavigationRail(
            selectedIndex: 0,
            onDestinationSelected: (index) {},
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('プロフィール'),
              ),
            ],
          ),

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
