class LinesController < ApplicationController
  def index
    @pagy, @lines = pagy(Line, items: 10)
  end
end
