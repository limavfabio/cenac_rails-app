class CountersController < ApplicationController
  before_action :set_counter

  def index
  end

  def admin
    @counter = Counter.first_or_create
  end

  def increment
    counter = Counter.first_or_create
    counter.increment!(:value)

    redirect_to admin_path
  end

  def modify
    @counter.update(counter_params)

    redirect_to admin_path
  end

  private

  def set_counter
    @counter = Counter.first_or_create
  end

  def counter_params
    params.require(:counter).permit(:value)
  end
end
