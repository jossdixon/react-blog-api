# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Permit access from frontend.
Rails.application.config.hosts << "https://dixonreactblog.netlify.app/"
