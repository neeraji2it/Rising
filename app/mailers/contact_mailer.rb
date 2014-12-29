class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact(name, email_id, phone, comments)
    @name = name
    @email_id = email_id
    @phone = phone
    @comments = comments
    mail(:to =>"swati.khosya@gmail.com", :subject => "Contact Us Info")
  end
end