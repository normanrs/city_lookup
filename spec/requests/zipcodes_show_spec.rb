require 'rails_helper'
RSpec.describe ZipcodesController do
  describe "GET #show" do
    it 'returns city data by zipcode' do
      entry = create(:zipcode)
      test_code = entry.zipcode
      get "/zipcodes/#{test_code}"

      expect(response.status).to eq 200
      data = JSON.parse(response.body, symbolize_names: true)
      expect(data).not_to be_empty
      expect(data.keys.include?(:zipcode)).to be(true)
      expect(data.keys.include?(:city)).to be(true)
      expect(data.keys.include?(:state)).to be(true)
      expect(data.keys.include?(:lat)).to be(true)
      expect(data.keys.include?(:long)).to be(true)
      expect(data.keys.include?(:timezone)).to be(true)
      expect(data.keys.include?(:daylight_savings)).to be(true)
      expect(data.keys.include?(:geopoint)).to be(true)
    end
  end
end