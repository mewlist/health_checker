class HealthChecker
  def initialize(app)
    @app = app
  end

  def call(env)
    if env['REQUEST_PATH'] == '/health_check'
      header ||= {}
      [200, header, 'healthy']
    else
      @app.call env
    end
  end
end
