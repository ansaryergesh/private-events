# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Name') }
  before { subject.save }

  it 'should be valid' do
    expect(subject).to be_valid
  end

  it 'name should be present' do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end

  it 'name should not be too short' do
    subject.name = 'a'
    expect(subject).to_not be_valid
  end

  it 'name shoult not be too long' do
    subject.name = 'a' * 20
    expect(subject).to_not be_valid
  end
end
