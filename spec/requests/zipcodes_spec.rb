require 'rails_helper'

RSpec.describe "/zipcodes", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Zipcode. As you add validations to Zipcode, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # ZipcodesController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /show" do
    it "renders a successful response" do
      zipcode = Zipcode.create! valid_attributes
      get zipcode_url(zipcode), as: :json
      expect(response).to be_successful
    end
  end

end
