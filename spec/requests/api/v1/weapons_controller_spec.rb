require 'rails_helper'

RSpec.describe Api::V1::WeaponsController, type: :request do
  before(:all) { host! "api-cabal.example.com" }

  describe "GET #index" do
    it "returns http success" do
      get '/weapons', {}, http_basic_authentication_header
      expect(response).to have_http_status(:success)
    end

    it 'returns json' do 
      blade = create(:weapon, name: 'blade')
      katana = create(:weapon, name: 'katana')
      get '/weapons', {}, http_basic_authentication_header
      expect(json[:data][0][:type]).to eq 'weapons'
      expect(json[:data][0][:id]).to eq blade.id.to_s
      expect(json[:data][0][:attributes][:name]).to eq 'blade'
      expect(json[:data][1][:type]).to eq 'weapons'
      expect(json[:data][1][:id]).to eq katana.id.to_s
      expect(json[:data][1][:attributes][:name]).to eq 'katana'

    end

    it 'returns 401' do
      get "/weapons", {}, http_basic_authentication_header(1, false)
      expect(response).to have_http_status(:unauthorized)
    end 
  end

  describe "GET #show" do
    let!(:weapon){ create(:weapon, name: 'blade') }

    it "returns http success" do
      get "/weapons/#{weapon.id}", {}, http_basic_authentication_header
      expect(response).to have_http_status(:success)
    end

    it 'returns json' do 
      get "/weapons/#{weapon.id}", {}, http_basic_authentication_header
      expect(json[:data][:type]).to eq 'weapons'
      expect(json[:data][:id]).to eq weapon.id.to_s
      expect(json[:data][:attributes][:name]).to eq 'blade'
    end

    it 'reuturns http not_found' do 
      get "/weapons/100", {}, http_basic_authentication_header
      expect(response).to have_http_status(:not_found)
    end

    it 'returns http unauthrized' do
      get "/weapons/#{weapon.id}", {}, http_basic_authentication_header(1, false)
      expect(response).to have_http_status(:unauthorized)
    end 
  end
end
