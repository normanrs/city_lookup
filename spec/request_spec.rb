require 'rails_helper'
describe 'the cities endpoint' do
  it 'returns city data by zipcode' do
    entry      = create(:zipcode)
    data = { zipcode: entry.zipcode }
    get '/zipcode', params: data

    expect(response.status).to eq 200
    data = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(data[0][:id]).not_to be_empty
    expect(data[0][:attributes]).not_to be_empty
    expect(data[0][:attributes].keys.include?(:zipcode)).to be(true)
    expect(data[0][:attributes].keys.include?(:city)).to be(true)
    expect(data[0][:attributes].keys.include?(:state)).to be(true)
    expect(data[0][:attributes].keys.include?(:lat)).to be(true)
    expect(data[0][:attributes].keys.include?(:long)).to be(true)
    expect(data[0][:attributes].keys.include?(:timezone)).to be(true)
    expect(data[0][:attributes].keys.include?(:daylight_savings)).to be(true)
    expect(data[0][:attributes].keys.include?(:geopoint)).to be(true)
  end

end