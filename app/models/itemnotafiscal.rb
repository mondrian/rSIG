class Itemnotafiscal < ActiveRecord::Base
  has_one :produto

  validates_presence_of :numero_nota
  validates_presence_of :produto_id
  validates_presence_of :unidade_medida
  validates_presence_of :quantidade
  validates_presence_of :valor_item_faturado
  validates_presence_of :valor_item_original
  validates_presence_of :situacao_tributaria_item
  validates_presence_of :percentual_icms_item
  validates_presence_of :percentual_ipi_item
  validates_presence_of :peso_liquido
  validates_presence_of :cod_emissao_nf
  
end
