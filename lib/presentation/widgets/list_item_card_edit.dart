import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListItemCardEdit extends StatelessWidget {
  const ListItemCardEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: Card(
        margin: const EdgeInsets.all(Sizes.p20),
        color: MaterialTheme.lightScheme().surfaceContainer,
        // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              trailing: PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: '編集',
                    child: ListTile(
                      leading: const Icon(Icons.edit),
                      title: const Text('編集'),
                      onTap: () {},
                    ),
                  ),
                  PopupMenuItem(
                    value: '削除',
                    child: ListTile(
                      leading: const Icon(Icons.delete),
                      title: const Text('削除'),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Image.network(
              'https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Cards Title 2',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  Container(height: 10),
                  Text(
                    AppStrings.appBarTitleListItem,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    height: Sizes.p32,
                  ),
                  Row(
                    children: <Widget>[
                      const Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent,
                        ),
                        child: Text(
                          '閉じる',
                          style: TextStyle(
                            color: MaterialTheme.lightScheme().primary,
                          ),
                        ),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent,
                        ),
                        child: Text(
                          '達成！',
                          style: TextStyle(
                            color: MaterialTheme.lightScheme().primary,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(height: 5),
          ],
        ),
      ),
    );
  }
}
