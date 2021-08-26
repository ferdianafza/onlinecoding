class ContentsController < InheritedResources::Base

  before_action :set_content, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[  edit update destroy index ]

  def index
    @contents = current_user.contents.all.order(created_at: :desc ).page params[:page]
  end

  def show
    @list = Content.order(created_at: :desc).limit(2)
  end

  private

    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:judul, :isi, :banner, :user_id)
    end

end
