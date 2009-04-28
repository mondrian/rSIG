require 'test_helper'

class FuncionarioTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste de validacoes" do
    f = Funcionario.new
    assert !f.save
  end

  test "relacoes do model funcionario" do
    f = Funcionario.new
    f.tipo = '1'
    f.nome = f.endereco = f.cep = '00000'
    f.cpf = '34173341601' # cpf valido
    f.rg = '99999'
    f.cidade = Cidade.find(:first)
    assert f.valid?
  end
end
