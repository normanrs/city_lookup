# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ZipcodesController, type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      entry = create(:zipcode)
      test_code = entry.zipcode

      expect(get: "/zipcodes/#{test_code}").to route_to('controller' => 'zipcodes', 'action' => 'show', 'zipcode' => test_code.to_s)
    end
  end
end
