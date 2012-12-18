class NotificationsMailer < ActionMailer::Base

  default :from => "coworfing@gmail.com"
  default :to => "coworfing@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Lots of love] #{message.subject}")
  end

end
