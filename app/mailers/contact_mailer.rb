class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact(name, email, phone, comments)
    @name = name
    @email = email
    @phone = phone
    @comments = comments
    mail(:to =>"shivraj@dine-media.com", :subject => "Contact Us")
  end
end