# FeatureProof

This gems creates a pop-up window that extracts last 5 records from given model and displays it with given text in nice little window in the down left corner of given template.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'feature_proof'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install feature_proof

## Usage

Important! This gem requires jQuery to work properly.

In order to use this gem you have to set up the configuration. I recommend doing it in 
        
        $ /app/controllers/application_controller.rb

You have to fill up following commands:

        $ FeatureProof.configure do |config|
              config.model = ""  #<- here goes the name of Model to extract data from
              config.field = "" # <- here goes the field that you want to search in given model
              config.location_city = "" # <- if you want to display the location city fill that field, if not leave it as it is
              config.location_country = "" # <- if you want to display the location country fill that field, if not leave it as it is
              config.text_to_display = "" #<- here goes text to display after the field of the model
            end

Add the following lines to proper files
	
	$ /app/assetes/javascripts/application.js
	  //= require feature_proof

	  /app/assets/stylesheets/application.css
	  *= require feature_proof

To edit the pop-up window simply write
    
        $ render 'feature_proof/proof'
        
And go to your 
        
        $ app/views/feature_proof/_proof.html.erb 
        
and edit it.
  

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/feature_proof. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FeatureProof project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/feature_proof/blob/master/CODE_OF_CONDUCT.md).
