class CounterChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'counter_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
