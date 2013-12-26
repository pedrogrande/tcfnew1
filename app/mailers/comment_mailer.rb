class CommentMailer < ActionMailer::Base
  default from: "pete@thecoderfactory.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.received.subject
  #
  def received(comment)
    @comment = comment
    mail(to: "pete@thecoderfactory.com", subject: "Comment on The Coder Factory blog")
  end
end
