# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Zipcode, type: :model do
  before(:all) do
    @zipcode = create(:zipcode)
  end

  it 'exists' do
    expect(@zipcode).to be_a(Zipcode)
  end

  it 'does not create duplicates' do
    clone = Zipcode.new(@zipcode.attributes)
    expect(@zipcode).not_to eq(clone)
  end
end
