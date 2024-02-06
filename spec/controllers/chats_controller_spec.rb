require 'rails_helper'

RSpec.describe ChatsController, type: :controller do
  login_user

  describe "GET #index" do
    it "assigns current_user chats to @chats" do
      chat = FactoryBot.create(:chat, users: [@user])
      get :index
      expect(assigns(:chats)).to eq([chat])
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new chat" do
        expect {
          post :create, params: { chat: FactoryBot.attributes_for(:chat) }
        }.to change(Chat, :count).by(1)
      end

      it "redirects to the new chat" do
        post :create, params: { chat: FactoryBot.attributes_for(:chat) }
        expect(response).to redirect_to Chat.last
      end
    end
  end
end
