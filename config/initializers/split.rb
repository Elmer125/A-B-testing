require 'split/dashboard'

Split.configure do |config|
  config.allow_multiple_experiments = true
  config.algorithm = Split::Algorithms::BlockRandomization
  config.redis = Redis.new
  config.persistence = :cookie
  config.persistence_cookie_length = 3600 # unit of time in seconds
end

# Split::Dashboard.use Rack::Auth::Basic do |username, password|
#   ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV["SPLIT_USERNAME"])) &
#     ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV["SPLIT_PASSWORD"]))
# end