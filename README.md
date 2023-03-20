# NaruShop - A simple online shopping site

**Create new project**
```bash
# For MySQL
rails new NaruShop -c sass -j esbuild -d mysql
cd NaruShop
code .
git status
git remote add origin git@github.com:nhson2022/NaruShop.git
git add -A
git commit -m "create project"
git push -u origin main
```

## Update database config
config/database.yml
```
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: localhost
  port: 3306
  username: root
  password: [password]
 
development:
  <<: *default
  database: narushop_development

test:
  <<: *default
  database: narushop_test

```

## Create database
```
rails db:create
```

**Setup Bootstrap**
```bash
npm i bootstrap jquery @popperjs/core

#or
yarn add bootstrap jquery @popperjs/core
```

**Update sass config app/assets/stylesheets/application.sass.scss**
```scss
// app/assets/stylesheets/application.sass.scss
@import "bootstrap/dist/css/bootstrap";
@import 'actiontext.css';
```

## Run App
```bash
./bin/dev
```

## Setup devise

Goto page and follow instructions https://github.com/heartcombo/devise

```bash
bundle add devise
rails generate devise:install
rails g devise:views

rails generate devise User
# db/migrate/20230303083538_devise_create_users.rb -- uncomment cac chuc nang
rails db:migrate

```

**Update config/environments/development.rb**
```rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

**Update app/views/layouts/application.html.erb**

<div class="container">
  <% if notice.present? %>
    <div class="alert alert-primary mt-4" role="alert">
      <%= notice %>
    </div>
  <% end %>

  <% if alert.present? %>
    <div class="alert alert-danger mt-4" role="alert">
      <%= alert %>
    </div>
  <% end %>

  <%= yield %>
</div>

**Setup Active Storage**
```bash
bin/rails active_storage:install
bin/rails db:migrate
```

**Setup Action Text**
```bash
bin/rails action_text:install
bin/rails db:migrate
```

**Create controller pages home**
```bash
rails g controller pages home
```
**Add will_paginate to Gemfile**
```
gem 'will_paginate', '~> 3.3'
gem 'will_paginate-bootstrap-style'
```

**Create mycart**
```bash
rails g controller mycarts follow buy
```