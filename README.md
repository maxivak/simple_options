# SimpleOptions

Rails gem to edit settings (options).

# Installation
Gemfile:

gem 'callback_request_bootstrap'
```
gem 'simple_form'
```

bundle it:
```
bundle install
```

Add migrations using generator:
```
rails g simple_options:install
```

Migrate the database:

```
rake db:migrate
```

It will add table 'options' to the database.

# Usage

Get option value
```
v = Option.get('site_name', '')

```

