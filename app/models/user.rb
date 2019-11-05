# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id

  has_many :attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :attendances

  validates :name, presence: true

  def attend(event)
    attendances.create(attended_event_id: event.id)
  end

  def cancel(event)
    attendances.find_by(attended_event_id: event.id).destroy
  end

  def attending?(event)
    event.attendees.include?(self)
  end
end
