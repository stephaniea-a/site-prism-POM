require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'active_support'

# The below active support entry ensures that all files in the 'lib' foolder are autoloaded as part of a program run
# information on ActiveSupport can be found here in regards to rails applications (although it provides a useful guide)
# here is the link to the rubydoc information on the ActiveSupport::Dependencies - http://www.rubydoc.info/docs/rails/2.3.8/ActiveSupport/Dependencies


ActiveSupport::Dependencies.autoload_paths << File.join(Dir.pwd, 'lib')

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.run_server = false #To ensure a Rack server does not start
  config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
  config.default_max_wait_time= 10 #wait time for asynchronus processes to finsh
  config.default_driver = :chrome #Default browser - input :selenium_chrome to use chrome browser as stated in the driver registration below
  config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic
end



# if ENV['chrome']
#   Capybara.default_driver = :selenium_chrome
Capybara.register_driver :selenium_chrome do |app| # Registration of chrome driver
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
# elsif ENV['poltergeist']
#   Capybara.default_driver = :poltergeist
#   Capybara.register_driver :poltergeist do |app|
#     options = {
#        :js_errors => true,
#        :timeout => 120,
#        :debug => false,
#        :inspector => true,
#    }
#   Capybara::Poltergeist::Driver.new(app, options)
# end
# end
