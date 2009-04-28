require 'test_helper'

class FuncionarioTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste de validacoes" do
    f = Funcionario.new
    assert !f.save
  end
end
