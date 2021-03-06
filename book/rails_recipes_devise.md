1. What is it?
2. When do you use it?
3. How do you get it in your app?
4. How do you use it in your app? (basic)
5. How do you use it in your app? (Advanced)
6. Advanced features or customizations

# Using Devise for Authentication

## 1. What is Devise?

Devise is an authentication system that you can install into your Rails app. It is...

## 2. When do you use Devise?

Devise is used to create user sign in, sign up for your app. It is quite fully featured and can use a variety of sign in methods, such as signing in with Twitter, but at its most basic Devise lets you rapidly create a Rails app which allows users to sign in and access parst of your app like an Admin Dashboard which you would naturally not want just any visitor to be able to use.

## 3. How do you install Devise?

To install Devise you have to include it in your gemfile and follow some steps to configure your Rails app to correctly use it.

In your application gemfile add the following line:

```ruby
gem 'devise'
```

Afterwards, update your app by running:

```
bundle install
```

You now have the Devise gem ready to play with.

As with many [Rails Engines](#) you now need to install it into your app.

Run the following command:

```
rails generate devise:install
```

This will generate your devise installation's configuration files as well as all of the code needed to potentially manage your users.

Devise generates a couple of files at this stage, an initialzier and a locales file.

It will however, also give you several things you have to manually configure before you can use it to generate your complete authentication system. Let's go through them now:

### Devise Configuration Requirements

First you need to ensure you have a defined default url in your environments files. Devise needs to know your default URL to configure it's mailer so that it can send people emails/password resets etc.

In a development environment you can update your ```~/config/environment/development.rb``` file with the following code:

```ruby
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }   
```

Naturally, if your port is not 3000 you need to change this.

In production, you need to set your default URL to your actual host address. This configuration should be made in your ```~/config/environment/production.rb``` file.

Devise also requires that you have a set root URL. This is vital for Devise to work.

To do this, you open your routes.rb file and highlight a designated root file:

Assuming you have a pages controller with a basic index method you could assign root to:

```
root to: 'pages#index'
```

You next need to update your layout files in include the notice/alert flash messages. The team from Devise suggest that the simplest way to do this would be to add two paragraph tags above your ```<%= yield %>``` tag like so:

```erb
<!-- ~/app/views/layouts/application.html.erb -->
<p class="notice"><%= notice %></p>                                                                   
<p class="alert"><%= alert %></p>
<%= yield %>
```
When it comes to developing your app you may want to change this and place them in a different element and create some custom styling for your messages.

#### Creating User model with Devise

Now that we have Devise installed let's walk through creating a User model.

You can either set up the user model yourself or let Devise do it for you

```
rails generate devise ModelName
```


#### Customizing Devise Views

You can copy Devise views (for customization) to your app by running:                                   
```
rails g devise:views
```

Straight afterwards make sure you migrate your changes. If you add in any other additional Devise functionality make sure to do so as well after the changes.

```
rake db:migrate
```