module ApplicationHelper
  def date_br(date_us)
    date_us.strftime('%d-%m-%Y')
  end

  def name_aplication
    'CRYPTO WALLET APP'
  end

  def translate_env
    if Rails.env.development?
      'Desenvolvimento'
    elsif Rails.env.production?
      'Production'
    else
      'Teste'
    end
  end
end
