class Application

  def call(env)
    resp = Rack::Response.new

    if DateTime.now < 12
      resp.write "Good Morning"
    elsif DateTime.now > 12
      resp.write "Good Afternoon"
    end

    resp.finish
  end
end
