# poner en cada post titulo, fecha y texto
class Post
  attr_reader :title, :date, :text
  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end
 end
