class ExampleMailer < ApplicationMailer
     default from: "kevin93ps@gmail.com"
     def sample_email(user, mensaje)
        @user = user
        mail(to: @user.email, subject: mensaje.mensaje)
     end
end
