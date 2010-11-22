require 'test_helper'

class BrickTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Brick.new.valid?
  end
end
