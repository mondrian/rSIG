require 'test_helper'

class ItemnotafiscalTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    inf = Itemnotafiscal.new
    assert !inf.save
  end

  test "relacao do item com a nota" do
    inf = Itemnotafiscal.new
    inf.produto = Produto.find(:first)
    inf.notafiscal = Notafiscal.find(:first)
    inf.unidade_medida = '1'
    inf.quantidade = 1
    inf.valor_item_faturado = inf.valor_item_original = inf.percentual_icms_item = inf.percentual_ipi_item = inf.peso_liquido = 9.9
    inf.situacao_tributaria_item = 'teste'
    inf.cod_emissao_nf = 1

    assert inf.valid?
  end
end
