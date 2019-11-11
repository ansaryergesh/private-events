# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AttendancesController, type: :controller do
  subject { User.new(name: 'name') }
  before { subject.save }
  # let (:value) {Event.new(location: 'location', event: 'event', description: 'desc', date: '12.02.2020')}
  # before {value.save}
  describe 'GET #new' do
    it 'returns success status' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
