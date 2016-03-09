# SimpleOptions

Rails gem to edit settings (options).

# Installation
Gemfile:

```
gem 'simple_options'
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

Set option value:
```
Option.set('site_name', 'my super site')

```



# Overview

Each site may have many options.
Option is identified by name.

Option has fields:
* name - unique name
* value - value stored for the option
* title - human readable name
* description - long description
* option_type - type of the option. = string | int | boolean
* is_changed - whether option can be changed via admin area
* category - name of the category

