require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver' #Necessário para que a redefinição do timeout possa funcionar

Capybara.configure do |config|
  #config.default_driver = :selenium_chrome # Com Navegador
  config.default_driver = :selenium_chrome_headless # Sem navegador

  Capybara.default_max_wait_time = 50
end

##############################################################################
# ############ REDEFINIÇÃO do TIMEOUT PADRÃO do CAPYBARA  ####################
##############################################################################
# Firefox instance with timeout is set to 100 seconds
#Capybara.register_driver :firefox_timeout do |app|
#  client = Selenium::WebDriver::Remote::Http::Default.new
#  client.timeout = 100
#  Capybara::Selenium::Driver.new(app, :browser => :firefox, :http_client => client)
#end

# Chrome instance with timeout is set to 100 seconds
#Capybara.register_driver :chrome_timeout do |app|
#  client = Selenium::WebDriver::Remote::Http::Default.new
#  client.timeout = 100
#  Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
#end

#Capybara.configure do |config|
#Capybara.default_driver = :firefox_timeout
#Capybara.default_driver = :chrome_timeout

#config.default_driver = :selenium_chrome # Com Navegador
#config.default_driver = :selenium_chrome_headless # Sem navegador
#end

#require 'capybara'
#require 'capybara/cucumber'
#require 'selenium/webdriver'

#Capybara.register_driver :chrome do |app|
#  Capybara::Selenium::Driver.new(app, browser: :chrome)
#end

#Capybara.register_driver :headless_chrome do |app|
#  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
#      chromeOptions: { args: %w[ no-sandbox headless disable-gpu window-size=1280, 1024] }
#  )

#Capybara::Selenium::Driver.new app,
#                               browser: :chrome,
#                               desired_capabilities: capabilities
#end

#Capybara.javascript_driver = :headless_chrome

#Capybara.configure do |config|
#  config.default_driver = :headless_chrome
#end
