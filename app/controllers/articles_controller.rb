class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:foto, :judul, :konten)
    end

end
