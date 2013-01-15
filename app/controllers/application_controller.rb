class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :account_url

 def account_url
    return new_user_session_url unless user_signed_in?
    case current_user.class.name
    when 'Place'
      edit_place_registration_url
    when 'Coworker'
      edit_coworker_registration_url
    else
      root_url
    end if user_signed_in?
  end
end

