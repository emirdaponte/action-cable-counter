class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    @counter = CounterHandler.value
  end

  def up
    CounterHandler.up

    head :no_content
  end

  def down
    CounterHandler.down

    head :no_content
  end
end
