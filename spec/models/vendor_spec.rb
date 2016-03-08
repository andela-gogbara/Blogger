require 'rails_helper'

RSpec.describe Vendor, type: :model do
  it "exits and has a name" do
    jeff = Vendor.create(name: "jeff")
    assert jeff
    assert_equal "jeff", jeff.name
  end
end
