class Blog
  attr_reader :blog
  def initialize
    @blog = []
  end

  def add_post(post)
    @blog.push(post)
  end
end
