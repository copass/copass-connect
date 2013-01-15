class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :account_url

 def account_url
    return new_user_session_url unless user_signed_in?
    case current_user.class.name
    when 'Customer'
      edit_customer_registration_url
    when 'Admin'
      edit_home_page_section_url
    else
      root_url
    end if user_signed_in?
  end
end

