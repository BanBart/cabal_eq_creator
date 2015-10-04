require 'rails_helper'

RSpec.describe Api::V1::WeaponsController, type: :request do
  before(:all) { host! "api-cabal.example.com" }

  describe "GET #index" do
    it "returns http success" do
      get '/weapons', {}, http_basic_authentication_header
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let!(:weapon){ create(:weapon) }
    it "returns http success" do
      get '/weapon', { id: weapon.id }, http_basic_authentication_header
      expect(response).to have_http_status(:success)
    end

    it 'generate json' do 
      get '/weapon', { id: weapon.id }, http_basic_authentication_header
      binding.pry
      expect(json[:type]).to eq 'weapon'
    end
  end

end
