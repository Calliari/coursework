class Article
  attr_accessor :article_name, :body_text, :date_posted

  def initialize article_name, body_text, date_posted
    @article_name = article_name
    @body_text = body_text
    @date_posted = date_posted
  end

end
