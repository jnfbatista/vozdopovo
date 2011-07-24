class HomeController < ApplicationController

  def index
    @ouve = Ouve.new

    @ouves = Ouve.all
    @nums = [[rand(220), rand(320)],
             [rand(220), rand(320)],
             [rand(220), rand(320)],
             [rand(220), rand(320)]]
  end

end
