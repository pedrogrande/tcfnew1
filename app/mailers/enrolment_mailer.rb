class EnrolmentMailer < ActionMailer::Base
  default from: "The Coder Factory <pete@thecoderfactory.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.download_programme.response.subject
  #
  def response(enrolment, amount)
    @enrolment = enrolment
    @amount = amount
    mail(to: @enrolment.email, subject: "You are now enrolled in The Coder Factory")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.download_programme.received.subject
  #
  def received(enrolment)
    @enrolment = enrolment
    mail(to: "info@thecoderfactory.com", subject: "Coder Factory Enrolment received")
  end
end
