class Cliente < ActiveRecord::Base
  has_many :pedidos
  has_many :notasfiscais
  belongs_to  :cidade
  has_one  :regiao_entrega, :class_name => 'Regiao', :foreign_key => 'regiao_entrega_id'
  has_one  :cidade_entrega, :class_name => 'Cidade', :foreign_key => 'cidade_entrega_id'
  has_one  :area
  
  validates_presence_of :razao_social, :message => "Informe a RAZÃO SOCIAL"
  validates_presence_of :nome_fantasia, :message => "Informe o Nome de Fantasia"
  validates_presence_of :cidade_id, :message => "Informe Cidade do Cliente"
  validates_uniqueness_of :cpf_cnpj, :message => 'CNPJ/CPF duplicado'

  def cpf_cnpj_formatado
    if self.cpf_cnpj.size == 11 # cpf
      self.cpf_cnpj[0,3]+'.'+self.cpf_cnpj[3,3]+'.'+self.cpf_cnpj[6,3]+'-'+self.cpf_cnpj[9,2]
    elsif self.cpf_cnpj.size == 14 #cnpj
      self.cpf_cnpj[0,2]+'.'+self.cpf_cnpj[2,3]+'.'+self.cpf_cnpj[5,3]+'/'+self.cpf_cnpj[8,4]+'-'+self.cpf_cnpj[12,2]
    else
      'Tamanho Inválido'
    end
  end

  def cep_formatado
    self.cep[0,2]+'.'+self.cep[3,3]+'-'+self.cep[5,3]
  end

  def celular_formatado
    '( ' + self.fone_celular[0,2] + ' ) ' + self.fone_celular[2,4] + '-' + self.fone_celular[6,4]
  end

  def fone_pessoal_formatado
    '( ' + self.fone_pessoal[0,2] + ' ) ' + self.fone_pessoal[2,4] + '-' + self.fone_pessoal[6,4]
  end
  
  def fone_comercial_formatado
    '( ' + self.fone_comercial[0,2] + ' ) ' + self.fone_comercial[2,4] + '-' + self.fone_comercial[6,4]
  end

end