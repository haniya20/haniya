
class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
end
def create
  @article = Article.new(article_params)
 
  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end