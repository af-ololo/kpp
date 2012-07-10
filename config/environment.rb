# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
KppControlSystem::Application.initialize!

Time::DATE_FORMATS[:time] = "%k:%M"
Time::DATE_FORMATS[:date] = "%d.%m.%Y"
