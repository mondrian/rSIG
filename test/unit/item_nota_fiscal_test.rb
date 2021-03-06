require 'test_helper'

class ItemNotaFiscalTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    inf = ItemNotaFiscal.new
    assert !inf.save
  end

  test "relacao do item com a nota" do
    inf = ItemNotaFiscal.new
    inf.produto = Produto.find(:first)
    inf.nota_fiscal = NotaFiscal.find(:first)
    inf.unidade_medida = '1'
    inf.quantidade = 1
    inf.valor_item_faturado = inf.valor_item_original = inf.percentual_icms_item = inf.percentual_ipi_item = inf.peso_liquido = 9.9
    inf.situacao_tributaria_item = 'teste'
    inf.cod_emissao_nf = 1

    assert inf.save!
  end
end
