require 'rails_helper'

RSpec.describe EventsController, type: :controller do
    subject {User.new(name: 'name')}
    before {subject.save}
    
    describe 'GET #new' do
        it 'returns success status' do
            get :new
            expect(response).to have_http_status(:success)
        end
    end

    describe 'Post #create' do
        it 'successfully sign in  for event' do
            session[:user_id] = subject.id
            post :create, params: {event: {location: 'location', event: 'event', description: 'desc', date: '12.02.2020'}}
            expect(Event.last.location).to eq('location')
        end
    end
end
