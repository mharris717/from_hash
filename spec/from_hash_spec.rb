require 'spec_helper'

class Widget
  include FromHash
  attr_accessor :color, :price
end

describe FromHash do
  it 'has a version number' do
    expect(FromHash::VERSION).not_to be nil
  end

  it 'does something useful' do
    widget = Widget.new(color: "Green")
    expect(widget.color).to eq "Green"
  end
end
