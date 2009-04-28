require 'test_helper'

class ItemnotafiscalTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    inf = Itemnotafiscal.new
    assert !inf.save
  end
end
