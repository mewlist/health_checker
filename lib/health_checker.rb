module HealthChecker
  def initialize(app)
    @app = app
  end

  def call(env)
    if env['REQUEST_PATH'] == '/health_check'
      header ||= {}
      [200, header, 'healty']
    else
      @app.call
    end
  end
end
