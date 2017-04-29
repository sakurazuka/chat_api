require 'rails_helper'

RSpec.describe "Reactions", type: :request do
  let(:message) { Message.create(text: "text") }

  describe "GET /reactions" do
    it "works! (now write some real specs)" do
      get api_message_reactions_path(message)
      expect(response).to have_http_status(200)
    end
  end
end
