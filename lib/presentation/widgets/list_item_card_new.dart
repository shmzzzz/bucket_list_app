import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListItemCardNew extends StatelessWidget {
  const ListItemCardNew({super.key});

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
                  Form(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'やりたいこと',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Form(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'カテゴリ',
                      ),
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
                          '完了',
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
