# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def select_for(form, campo, model, campo_exibicao, *opcoes)
    form.select campo, eval(model.to_s.downcase.classify).find(:all, *opcoes).collect {|i| [i.attributes[campo_exibicao],i.id]}
  end
  
  def cpf_formatado (cpf)
    if (!cpf.nil? && cpf != '')
      cpf[0,3] << '.' << cpf[3,3] << '.' << cpf[6,3] << '-' << cpf[9,2]
    else
      '000.000.000-00'
    end
  end

  def cnpj_formatado(cnpj)
    if (!cnpj.nil? && cnpj != '')
      cnpj[0,2]+'.'+cnpj[2,3]+'.'+cnpj[5,3]+'/'+cnpj[8,4]+'-'+cnpj[12,2]
    else
      '00.000.000/0000-00'
    end
  end
  
  def fone_formatado(fone)
    if (!fone.nil? && fone != '')
      '(' << fone[0,2] << ')' << fone[2,4] << '-' << fone[6,4]
    else
      ''
    end
  end
   
  def cep_formatado (cep)
    if (!cep.nil? && cep != '')
      cep[0,2] + '.' + cep[2,3] + '-' + cep[5,3]
    else
      ''
    end
  end
end