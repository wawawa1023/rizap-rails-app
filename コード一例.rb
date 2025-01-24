#Railsガイド
https://railsguides.jp/getting_started.html

#routes.rb
root "users#index" #rootとはルートパス（今回だとhttp://localhost:3000/）を設定
resources :users

#indexアクション
def index
  @users = User.all
end

#index.html.erb
<h1>ユーザー一覧</h1>

<div>
    <table>
        <tr>
            <th>
                ID
            </th>
            <th>
                名前
            </th>
        </tr>
        
        <% @users.each do |user| %>
            <tr>
                <th>
                    <%= user.id %>
                </th>
                <th>
                    <%= user.name %>
                </th>
            </tr>
        <% end %>
        
    </table>
</dev>

#newアクション
def new
  @user = User.new
end

#new.html.erb
<h1>新規登録</h1>

<%= link_to '一覧に戻る', users_path %>

<%= render 'form', user: @user %>

#createアクション
def create
  @user = User.new(user_params)
  if @user.save
    redirect_to users_path
  else
    render 'new'
  end
end

praivate
  def user_params
    params.require(:user).permit(:name, :ruby)
  end
