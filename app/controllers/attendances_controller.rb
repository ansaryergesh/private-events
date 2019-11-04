class AttendancesController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def upcoming
    @upcoming_events = current_user.upcoming
  end

  def previous
    @prev_events = current_user.past
  end
end
