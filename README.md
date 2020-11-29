### プロジェクトマネジメント ー Ruby on Rails 

#### 1. 新しいプロジェクトの作成

```
rails new keepTasks --webpack=vue
```

ソース； https://github.com/rails/webpacker#installation

#### 2. Hướng dẫn thiết lập  

- Bước 1: Thiết lập môi trường trên AWS Amazon 

- Bước 2:
```
git clone https://github.com/thanhhff/ruby-on-rails-project-management.git
```

- Bước 3: Cài đặt các Gem cần thiết
```
bundle install
```

- Bước 4: Cài đặt yarn 

    - YARNのダウンロード
    ```
    source <(curl -sL https://cdn.learnenough.com/yarn_install)
    ```
  
    - YARN をイントールする
    ```
    yarn install --check-files
    ```

- Bước 5: 開発環境サーバーにアプリからアクセスできるようにする

> config/environments/development.rbに config.hosts.clearを追加する

- Bước 6: Cài đăt Mailcatcher để nhận Email 

> Instead, pop a note in your README stating you use mailcatcher, and to run gem install mailcatcher then mailcatcher to get started.

```
gem install mailcatcher
```

Trong trường hợp bị lỗi thì sử dụng:
```
gem install mailcatcher -- --with-cflags="-Wno-error=implicit-function-declaration"
```

#### 3. Hướng dẫn chạy chương trình 

Chạy chương trình:

Bước 1:
```
rails s 
```

Chú ý: trong trường hợp lỗi Database thì chạy lần lượt các lệnh sau
```
rm -f db/*.sqlite3
rake db:create
RAILS_ENV=development rake db:migrate
```

Bước 2: Bật thêm 1 `Tab Terminal` và khởi chạy Mail Server

```
mailcatcher
```