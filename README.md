# React::Webpack::Rails
A simple installation tool for getting up and running with React + Webpack in Rails.

_* This is still in the early stages of development, and is experimental. Feedback is appreciated, and pull requests are welcome._

## OVERVIEW
This is a minimalist approach to integrating React and Webpack with Rails. There's nothing really hidden in the gem. The point is to be transparent about what is being added to your app and why.

There are several goals for this gem:

* Provide a lightweight gem for integrating React and Webpack to Rails
* Easy asset compiling for development and production
* Fluid development workflow
* Easy npm module integration
* single step server for development
* single asset compilation for deployment

## INSTALLATION

Add this line to your application's Gemfile:

```ruby
gem 'react-webpack-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install react-webpack-rails


## GENERATOR TOOL
_* not currently supporting HAML_

$ rails g react:webpack:install

### WHAT THIS GENERATES
**EMPTY DIRECTORIES**
* `client/components`
* `app/assets/webpack`

**BASE FILES**
* `webpack.config.js`
* `.babelrc`
* `app/helpers/react_helper.rb`
* `client/index.js`
* `Procfile`
* `lib/tasks/assets.rake`

**GEMS**

* `foreman`

_* you can skip immediate installation_

**NODE MODULES**

* `babel-core`
* `babel-loader`
* `babel-preset-es2015`
* `babel-preset-react`
* `classnames`
* `react`
* `react-dom`
* `webpack`

_* you can skip immediate installation_

**APPENDING ASSETS INTO THE PIPELINE**

## DEVELOPMENT
The generator installs Foreman and adds a Procfile to fire up Webpack and the Rails server in a single command:

    $ foreman start

You can also run these separately if you'd like.

```
npm run watch
```
```
rails server
```

If everything went well, you should be able to view your app at http://localhost:3000

 You can add your components to `client/components/` and be sure to list them in `client/index.js`

You can call components in the view with an `erb` tag for your components and props: `<%= react_component :Dropdown, listItems: [1,2,3,4] %>`

## PRODUCTION
A rake task for precompiling the webpack assets is added by the generator. This essentially adds the Webpack/Babel transpiling to the precompilation task that runs when you deploy to production. So you should never need to have two separate build tasks.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/react-webpack-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
