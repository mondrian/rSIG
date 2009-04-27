class Notafiscal < ActiveRecord::Base
    validates_uniqueness_of :numero_nota
    has_many :itemnotafiscal
    validates_presence_of :numero_nota,     :message => "Informe o Número da Nota"
    validates_presence_of :numero_selo,     :message => "Informe o Número do Selo"
    validates_presence_of :numero_serie,    :message => "Informe a Série do Selo"
    validates_presence_of :percentual_icms, :message => "Informe o % de ICMS"
    validates_presence_of :emissao,         :message => "Informe a Data de Emissão"
    validates_presence_of :cfop,            :message => "Informe CFOP"
    validates_presence_of :natureza_operacao, :message => "Informe Natureza da Operação" 
    validates_presence_of :valor_ipi,       :message => "Informe IPI" 
    validates_presence_of :valor_ipi,       :message => "Informe IPI"
    validates_presence_of :valor_desconto,  :message => "Informe Valor Desconto", :default => 0
    validates_presence_of :valor_acrescimo, :message => "Informe IPI", :default => 0 
    validates_presence_of :qtde_volumes,    :message => "Informe Quantidade de Volumes" 
    validates_presence_of :percentual_desconto, :message => "Informe o % de Desconto", :default => 0
    
    validates_numericality_of   :percentual_icms
end
