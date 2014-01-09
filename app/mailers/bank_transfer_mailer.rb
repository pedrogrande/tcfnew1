class BankTransferMailer < ActionMailer::Base
  default from: "The Coder Factory <pete@thecoderfactory.com>"

  def response(enrolment, amount)
    @enrolment = enrolment
    @amount = amount
    mail(to: @enrolment.email, subject: "You are now enrolled in The Coder Factory")
  end
end
