Rails.application.config.middleware.insert 0, Rack::Cors do
  allow do
    origins '*.challengepost.com'
    resource '/assets/*'
  end
end

