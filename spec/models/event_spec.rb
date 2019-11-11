require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { User.new(name: "Name") }
  before { subject.save }

  it "should be valid" do
    event = subject.events.create(location: 'location', event: 'event', description: 'desc', date: '12.02.2020')
    expect(event).to be_valid
  end

  it "name should be present" do
    event = subject.events.create(location: nil, event: 'event', description: 'desc', date: '12.02.2020')
    expect(event).to_not be_valid
  end
end
