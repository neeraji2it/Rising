class ContactMailer < ActionMailer::Base
  default from: '"Rising Sun United" risingsun@example.com'

  def contact(name, email_id, phone, comments)
    @name = name
    @email_id = email_id
    @phone = phone
    @comments = comments
    mail(:to =>"crystal.badu@gmail.com", :subject => "Contact Us Info")
  end
end