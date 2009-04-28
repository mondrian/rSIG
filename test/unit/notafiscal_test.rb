require 'test_helper'

class NotafiscalTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    nf = NotaFiscal.new
    assert !nf.save
  end

  test "relacao com os itens" do
    nf = Notafiscal.new
    for i in 1..10
      i = Itemnotafiscal.new
      i.produto = Produto.find(:first)
      i.unidade_medida = '1'
      i.quantidade = 1
      i.valor_item_faturado = inf.valor_item_original = inf.percentual_icms_item = inf.percentual_ipi_item = inf.peso_liquido = 9.9
      nf.itens << i
    end
    assert (nf.itens.size > 0)
  end
end
