class CounterChannel < ApplicationCable::Channel
  def subscribed
    stream_for 'counter_channel'
  end

  def unsubscribed; end

  def up
    CounterHandler.up
  end

  def down
    CounterHandler.down
  end
end
