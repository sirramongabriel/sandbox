require 'rspec'
require 'factory_girl'

RSpec.configure do |config|
  # FactoryGirl
  FactoryGirl::Syntax::Methods
  FactoryGirl.find_definitions

  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use specified formatter
  config.formatter = :documentation # :progress, :html, :sublime

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
end  
