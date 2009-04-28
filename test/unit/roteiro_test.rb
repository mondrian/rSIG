require 'test_helper'

class RoteiroTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    r = Roteiro.new
    assert !r.save
  end
end
