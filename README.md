capistrano-thin
===============

Thin-related tasks for Capistrano 3.

Requirements
------------

Make sure that

```
gem 'capistrano'
gem 'capistrano-bundler'
```

is present inside your **Gemfile**.

Installation
------------

Use the following lines for **Rubygems**:

```ruby
gem install capistrano-thin
```

or insert the following line into your __Gemfile__ for **Bundler**:

```ruby
gem "capistrano-thin"
```

Then, open your Capfile and add the following line:

```ruby
require 'capistrano/thin'
```

Contributing to capistrano-thin
-------------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2013 Ismail Faruqi. See LICENSE.txt for
further details.

