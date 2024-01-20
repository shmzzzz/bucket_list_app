import 'package:bucket_list_app/presentation/page/achieved_list_page.dart';
import 'package:bucket_list_app/presentation/page/list_page.dart';
import 'package:bucket_list_app/presentation/page/my_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

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
        child: Text(
          'This is DETAIL PAGE',
          style: Theme.of(context).textTheme.titleLarge,
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
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          switch (value) {
            case 0:
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ListPage(),
                ),
              );
            case 1:
              break;
            case 2:
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AchievedListPage(),
                ),
              );
            case 3:
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyPage(),
                ),
              );
            default:
          }
        },
      ),
    );
  }
}
