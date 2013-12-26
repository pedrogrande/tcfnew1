class EnquiryForm < ActionMailer::Base
  default from: "dan@thecoderfactory.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_form.received.subject
  #
  def received(enquiry)
   mail(to: "pete@thecoderfactory.com, dan@thecoderfactory.com, kim@thecoderfactory.com", :subject => "Enquiry Received")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_form.response.subject
  #
  def response(enquiry)
    @enquiry = enquiry
    mail(to: @enquiry.email, :subject => "Your enquiry has been sent")
  end
end
