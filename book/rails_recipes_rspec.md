1. What is it?
2. When do you use it?
3. How do you get it in your app?
4. How do you use it in your app? (basic)
5. How do you use it in your app? (Advanced)
6. Advanced features or customizations

# Setting up Testing with RSpec

1. 

2. 

3. Installing RSpec

To get RSpec into your Rails app you typically generate your Rails app without the default testing framework [Minitest](#).

To do this you run your ```rails new``` command with the additional flag "-T". Which stands for test. This indicates to Rails, that your new app should not have a test framework included. Namely, you do not want Rails to add the Minitest framework and a test folder.

Let's see that rails new command in action.

```
rails new fancy_app_name -T
```

This will create the conventional Rails app, but missing the test directory.

> ### What about adding Rspec to an existing app?
> The only differnce in this case is that you should delete the exisiting test files created by Rails. When you run ```rails new fancy_app_name -T it doesn't create a test folder, so feel free to replicate that by deleting the test/ folder. Once you have deleted your unwanted test folder, follow the rest of the instructions below.

The next step is to update your gemfile to reflect that you want to install RSpec.

```ruby
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  # your other gems in the development and test group here
end
```

Your next step is to run bundle install to update your application with your new gem.

```
bundle install
```

This may take a while, depending on your internet connection.

Once this is complete you need to install RSpec into your app. Run the following command inside your base project folder (the place where rails commands work!):

```
rails generate rspec:install
```

This will install RSpec and create a folder called ```spec/```. This you will also create three files:

* ```.spec``` which may be invisible depending on your folder settings.
* ```rails_helper.rb``` This file configures your Rails environment to use RSpec in the way you want it
* ```spec_helper.rb``` This file configures your RSpec environment

you are now able to use the RSpec testing framework.

Your additional Rails commands will also now create files now so if you generate a model you will see a RSpec file created alongside it, within the ```/spec/``` folder, so that you can start writing your tests.

