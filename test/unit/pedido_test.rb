require 'test_helper'

class PedidoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    p = Pedido.new
    assert !p.save
  end
end
