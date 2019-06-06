class ApplicationController < ActionController::Base
  def delegate_render(action)
    send(action)
    render(action: action)
  end
end