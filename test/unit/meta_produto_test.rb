require 'test_helper'

class MetaProdutoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    mp = MetaProduto.new
    assert !mp.save
  end
end
