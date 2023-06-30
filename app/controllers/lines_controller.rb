class LinesController < ApplicationController
  def index
    # @lines = Line.all
    @pagy, @lines = pagy(Line, items: 10)
  end
end
