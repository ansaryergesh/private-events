class User < ApplicationRecord
    has_many :events, foreign_key: :creator_id

    has_many :attendances, foreign_key: :attendee_id
    has_many :attended_events, :through => :attendances




    def attend(event)
        attendances.attended_event_id.push event
    end

    def cancel(event)
        attendances.attended_event_id.delete event
    end

    # def attended?(event)
    #     attendances.include? event
    # end
end
