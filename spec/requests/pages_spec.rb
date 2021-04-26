require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /info" do
    it "returns http success" do
      get "/pages/info"
      expect(response).to have_http_status(:success)
    end
  end

end
