class MessageMailer < ApplicationMailer

  def contact_me(message)
    @greeting = "Hi"
    @body = message.body
    mail to: "thiagoiferreira@hotmail.com", from: message.email
  end
end
