require 'test_helper'

class RegiaoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    r = Regiao.new
    assert !r.save
  end
end
