require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste de validacoes de cidades" do
    c = Cliente.new
    assert !c.save
  end

  test "relacoes do model de clientes" do
    c = Cliente.new
    c.tipo_cliente = '1'
    c.cpf_cnpj = '59322069000184' # cnpj valido
    c.razao_social = c.nome_fantasia = '------------'
    c.cidade = Cidade.find(:first)
    c.uf = 'CE'
    c.regiao_entrega = Regiao.find(:first)
    c.cidade_entrega = Cidade.find(:first)
    c.area = Area.find(:first)
    assert c.save    
  end
end
