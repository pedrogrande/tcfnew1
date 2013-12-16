class DownloadProgramme < ActionMailer::Base
  default from: "The Coder Factory <pete@thecoderfactory.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.download_programme.response.subject
  #
  def response(programme_request)
    @programme_request = programme_request
    mail(to: "@programme_request.email", subject: "Programme information from The Coder Factory")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.download_programme.received.subject
  #
  def received(programme_request)
    @programme_request = programme_request
    mail(to: "info@thecoderfactory.com", subject: "Programme information sent")
  end
end
