class CounterHandler
  COUNTER = 'counter'

  class << self
    def value
      Rails.cache.fetch(COUNTER) { 0 }
    end

    def up
      counter = Rails.cache.increment(COUNTER)

      CounterChannel.broadcast_to('counter_channel', counter)
    end

    def down
      counter = Rails.cache.decrement(COUNTER)

      CounterChannel.broadcast_to('counter_channel', counter)
    end
  end
end
