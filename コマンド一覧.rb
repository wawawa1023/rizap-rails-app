#クローン
git clone (リポジトリのSSHキー)

#コミット
git add .
git commit -m "コミットメッセージ"

#ルーティングの確認
http://localhost:3000/rails/info/routes

#モデルの作成
docker-compose exec web bin/rails generate model User name:string ruby:string

#マイグレーションの実行
docker-compose exec web bin/rails db:migrate

#コントローラーの作成
docker-compose exec web bin/rails generate controller users

#ビューの作成
mkdir app/views/users

#実際に表示できるか試す
http://localhost:3000/users

#初期データの投入
docker-compose exec web bin/rails db:seed

#app/views/index.html.erb の最終行に以下を追加
<%= link_to '新規登録', new_user_path %>

