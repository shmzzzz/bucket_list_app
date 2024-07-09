> [!IMPORTANT]
> <b>実装中のため、未実装部分は随時更新予定</b>

# bucket_list_app

- 「人生でやりたい 100 のこと」を登録するアプリ


## 使用ライブラリ
![](https://img.shields.io/badge/flutter-v3.16.8-blue)
![](https://img.shields.io/badge/go_router-v13.0.1-blue)
![](https://img.shields.io/badge/firebase_core-v2.24.2-blue)
![](https://img.shields.io/badge/firebase_auth-v4.16.0-blue)
![](https://img.shields.io/badge/flutter_hooks-v0.20.4-blue)
![](https://img.shields.io/badge/hooks_riverpod-v2.4.9-blue)
![](https://img.shields.io/badge/cloud_firestore-v4.15.0-blue)
![](https://img.shields.io/badge/modal_bottom_sheet-v3.0.0_pre-blue)


## 画面仕様

**ログイン画面**

| ログイン                       | 新規登録                       |
| ------------------------------ | ------------------------------ |
| ![](readme_files/ログイン.png) | ![](readme_files/新規登録.png) |
| アカウント作成済で未ログインのユーザーに表示する画面<br/>パスワードはデフォルトでマスキング<br/>アイコンタップでマスキングあり/なしを切り替え可能 | アカウント未作成のユーザーに表示する画面 |

---

**リスト画面**
- 右上「+」ボタンタップで詳細画面へ遷移

| 一覧タブ                                  | カテゴリタブ                                  | やりたい度タブ                                  |
| ----------------------------------------- | --------------------------------------------- | ----------------------------------------------- |
| ![](readme_files/リスト画面_一覧タブ.png) | ![](readme_files/リスト画面_カテゴリタブ.png) | ![](readme_files/リスト画面_やりたい度タブ.png) |

---

**詳細画面**
- リストに表示するアイテムを登録する
- 「追加」ボタンタップでDBに登録する

画面表示時 | 入力項目タップ時 | 「･･･」ボタン(右上)タップ時
--- | --- | --- 
![image](https://github.com/shmzzzz/bucket_list_app/assets/85086833/e7a5de97-00d3-490f-a064-ba7bae905764) | ![image](https://github.com/shmzzzz/bucket_list_app/assets/85086833/9498a970-9b8f-408f-8f5d-88ec1e2c160e) | ![image](https://github.com/shmzzzz/bucket_list_app/assets/85086833/3ae7ff9c-5cc3-4ebc-b0ff-6828b648cac6)




---

**達成済みリスト画面**
- 未実装

<img width="30%" src="readme_files/達成済みリスト画面.png">

---

**マイページ画面**
- ログアウトボタンタップでログアウト可能

<img width="30%" src="readme_files/マイページ画面.png">

## Figma
> [!NOTE]
> 実装前に作成<br/>
> 一部デザインは実装をしながら修正している

  <img  src="readme_files/Figma.png">
