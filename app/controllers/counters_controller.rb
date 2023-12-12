class CountersController < ApplicationController
  before_action :set_counter

  def index; end

  def admin
    @counter = Counter.first_or_create
  end

  def increment
    @counter.increment!(:value)

    ActionCable.server.broadcast('counter_channel', {
                                   value: @counter.value
                                 })
  end

  def modify
    return unless @counter.update(counter_params)

    ActionCable.server.broadcast('counter_channel', {
                                   value: @counter.value
                                 })
  end

  private

  def set_counter
    @counter = Counter.first_or_create
  end

  def counter_params
    params.require(:counter).permit(:value)
  end
end
