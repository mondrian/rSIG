require 'test_helper'

class MinutaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    m = Minuta.new
    assert !m.save
  end
end
