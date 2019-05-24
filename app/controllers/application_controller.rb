class ApplicationController < Sinatra::Base
  use Rack::MethodOverride
  Tilt.register Tilt::ERBTemplate, 'html.erb'
end