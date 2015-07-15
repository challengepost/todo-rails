require 'rails_helper'

RSpec.describe "Todos", type: :request do
  describe "GET /todos" do
    it "is a success" do
      get todos_path
      expect(response.status).to be(200)
    end
  end
end
