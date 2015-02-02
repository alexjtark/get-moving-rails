class BoxesController < ApplicationController

  def new
    @box = Box.new
  end
end
