import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Bucket List 100',
        ),
      ),
      drawer: NavigationDrawer(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'ようこそ ゲストさん！',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'リスト',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.list,
            ),
            title: Text('一覧'),
          ),
          const ListTile(
            leading: Icon(
              Icons.category,
            ),
            title: Text('カテゴリ'),
          ),
          const ListTile(
            leading: Icon(
              Icons.celebration,
            ),
            title: Text('やりたい度'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              '詳細',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.details,
            ),
            title: Text('やりたいこと'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              '達成済みリスト',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.library_add_check,
            ),
            title: Text('一覧'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'マイページ',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text('設定'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is MY PAGE',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            OutlinedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                context.go('/auth');
              },
              child: const Text(
                'ログアウト',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'リスト',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: '詳細',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: '達成済み',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'マイページ',
          ),
        ],
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          switch (value) {
            case 0:
              context.push('/list');
            case 1:
              context.push('/detail');
            case 2:
              context.push('/achieved');
            case 3:
              break;
            default:
          }
        },
      ),
    );
  }
}
