class BasicRouter

  def initialize
    @routes = {}
  end

  def match(route)
    @routes.update(route)
  end

  def routes(&block)
    instance_eval(&block)
    puts @routes
  end
end

# Router.new.instance_eval { @routes }

Router.new.routes do
  match '/users' => 'users#index'
  match '/login' => 'sessions#new'
end
