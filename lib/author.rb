class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []

  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    titlee = Post.new(title)
    self.posts << titlee
    titlee.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
