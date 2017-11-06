class OrcamentoMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def orcamento_email(user)
    @orcamento = orcamento
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Orçamento Plano B Monitoria')
  end
end
