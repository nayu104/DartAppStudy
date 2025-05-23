EngineerSNS（仮称）

エンジニア向けに設計されたSNSアプリです。
GitHubアカウントでログインし、コードの投稿・共有・リアクションなどが可能です。
開発者が気軽に集まり、技術を共有し合える「エンジニアのための居場所」を目指しています。

特徴
	•	GitHub OAuth ログイン対応（Flutter × Supabase or Node.js）
	•	投稿機能（テキスト／コード／GitHub Gist）
	•	タイムライン表示（新着順）
	•	いいね機能
	•	プロフィール表示（GitHubアイコン・ID）
	•	フォロー・フォロワー機能（GitHub連携）
	•	BottomNavigationによる画面遷移（Home / 検索 / グループ / 通知 / DM）

技術スタック

項目	内容
フロントエンド	Flutter（Dart）
バックエンド	Node.js
認証	GitHub OAuth
データベース	PostgreSQL（Neon）
デプロイ	Google Cloud Run

開発背景

Flutter × Node.js × GitHub APIを組み合わせることで、
開発者同士がコードベースで繋がるSNSの実現を目指しました。
技術的な発見やTipsを気軽にシェアし合える環境を提供します。

ログイン画面	タイムライン	投稿画面
		

今後の開発予定
	•	DM機能
	•	投稿へのコメント機能
	•	タグによる検索機能