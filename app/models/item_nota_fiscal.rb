class ItemNotaFiscal < ActiveRecord::Base
  belongs_to :produto
  belongs_to :nota_fiscal

  validates_presence_of :quantidade
  validates_presence_of :valor_item_faturado
  validates_presence_of :valor_item_original
  validates_presence_of :situacao_tributaria_item
  validates_presence_of :percentual_icms_item
  validates_presence_of :percentual_ipi_item
  validates_presence_of :peso_liquido
  validates_presence_of :cod_emissao_nf

end
