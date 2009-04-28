require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    p = Produto.new
    assert !p.save
  end
end
