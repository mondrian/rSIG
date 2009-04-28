require 'test_helper'

class ItensMinutaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    im = ItensMinuta.new
    assert !im.save
  end
end
