class HomesController < ApplicationController
  def index
    @contents = Content.order(created_at: :desc).limit(4)
    @listcontents = Content.order(created_at: :desc).page params[:page]
    @banner_besar = Content.order("RANDOM()").first(1)
    @random_content = Content.order("RANDOM()").first(2)
  end
end
