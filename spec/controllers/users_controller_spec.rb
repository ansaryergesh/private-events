require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe 'GET #new' do
        it 'returns success status' do
            get :new
            expect(response).to have_http_status(:success)
        end
    end

    describe 'Post #create' do
        it 'successfully sign in ' do
            post :create, params: {user: {name: 'name'}}
            expect(User.last.name).to eq('name')
        end
    end
end
