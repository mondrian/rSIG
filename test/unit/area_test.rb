require 'test_helper'

class AreaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    a = Area.new
    assert !a.save
  end

  test "testando as relacoes" do
    a = Area.new
    a.cidade = Cidade.find(:first)
    a.roteiro = Roteiro.find(:first)
    a.descricao = "roteito#{Time.now.to_i}"
    assert a.save
  end
end
