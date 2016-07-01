class ExampleMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def sample_email(user)
    @user = user
    mail(to: @user.correo, subject: 'Parque del Recuerdo: Informes')
  end
end
