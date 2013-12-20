class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
  def default_url_options
    if Rails.env.production?
      {:host => "be-coach.herokuapp.com"}
    else  
      {}
    end
  end
end
