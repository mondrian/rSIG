# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def select_for(form, campo, model, campo_exibicao, *opcoes)
    form.select campo, eval(model.to_s.downcase.classify).find(:all, *opcoes).collect {|i| [i.attributes[campo_exibicao],i.id]}
  end
  
  def cpf_cnpj_formatado (documento)
    if documento.size == 11 # cpf
      documento[0,3]+'.'+documento[3,3]+'.'+documento[6,3]+'-'+documento[9,2]
    elsif documento.size == 14 #cnpj
      documento[0,2]+'.'+documento[2,3]+'.'+documento[5,3]+'/'+documento[8,4]+'-'+documento[12,2]
    else
      'Tamanho Inválido'
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