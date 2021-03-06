PartyFoul.configure do |config|
  # The collection of exceptions PartyFoul should not be allowed to handle
  # The constants here *must* be represented as strings
  config.blacklisted_exceptions = ['ActiveRecord::RecordNotFound', 'ActionController::RoutingError']

  # The OAuth token for the account that is opening the issues on GitHub
  config.oauth_token = ENV['GITHUB_TOKEN']

  # The API endpoint for GitHub. Unless you are hosting a private
  # instance of Enterprise GitHub you do not need to include this
  # config.endpoint               = 'https://api.github.com'

  # The Web URL for GitHub. Unless you are hosting a private
  # instance of Enterprise GitHub you do not need to include this
  # config.web_url                = 'https://github.com'

  # The organization or user that owns the target repository
  config.owner = 'madgloryint'

  # The repository for this application
  config.repo = 'nowplayus'

  # The branch for your deployed code
  config.branch = Rails.env == 'production' ? 'master' : 'development'

  config.additional_labels = ['staging'] if Rails.env == 'staging'
end