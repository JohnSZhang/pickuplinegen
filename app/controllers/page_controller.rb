class PageController < ApplicationController
  def home
    @pickup = Pickup.random
  end
end
