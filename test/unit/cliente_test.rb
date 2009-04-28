require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste de validacoes de cidades" do
    c = Cliente.new
    assert !c.save
  end
end
