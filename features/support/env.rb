require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium/webdriver'
require 'site_prism'
require 'faker'
require 'rubygems'
require 'rspec'

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
CUSTOM = YAML.load_file(File.dirname(__FILE__) + "/config.yml")

Capybara.register_driver :selenium_chrome_headless do |app|
  Capybara::Selenium::Driver.load_selenium
  browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
    opts.args << "--headless"
    opts.args << "--disable-gpu" if Gem.win_platform?
    opts.args << "--no-sandbox"
    opts.args << "--disable-site-isolation-trials"
    opts.args << "--log-level=3" # desabilita o devtools listening (logs do console)
    opts.args << "--window-size=1920x1080"
  end
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end

Capybara.configure do |config|
  #config.default_driver = :selenium_chrome # Com Navegador
  config.default_driver = :selenium_chrome_headless # Sem navegador
  config.app_host = CONFIG['url_padrao']
  config.default_max_wait_time = 30
end