Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: true, logger: (-> { Rails.logger }) do
  allow do
    origins 'http://localhost:3000'

    resource '/cors',
      :headers => :any,
      :methods => [:post],
      :max_age => 0

    resource '*',
      :headers => :any,
      :methods => [:get, :post, :delete, :put, :patch, :options, :head],
      :max_age => 0,
      credentials: true
  end
end

