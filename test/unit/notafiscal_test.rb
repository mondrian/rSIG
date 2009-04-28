require 'test_helper'

class NotafiscalTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    nf = Notafiscal.new
    assert !nf.save
  end

  test "relacao com os itens" do
    nf = Notafiscal.new
    for i in 1..10
      i = Itemnotafiscal.new
      i.produto = Produto.find(:first)
      i.unidade_medida = '1'
      i.quantidade = 1
      i.valor_item_faturado = i.valor_item_original = i.percentual_icms_item = i.percentual_ipi_item = i.peso_liquido = 9.9
      nf.itensnotasfiscais << i
    end
    assert (nf.itensnotasfiscais.size > 0)
  end
end
