class JwtTokenMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)

    if should_put_jwt_token_in_body? && headers['authorization'].present?
      body = JSON.parse(response.first)

      body['data']['token'] = headers['authorization'].split(' ').last

      headers.delete('authorization')

      response = Rack::Response.new([body.to_json], status, headers)
    end

    [status, headers, response]
  end
end