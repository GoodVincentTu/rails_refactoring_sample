class Post
  attr_reader :id, :title, :body, :created_at
  def initialize id, title, body, created_at
    @id         = id
    @title      = title
    @body       = body
    @created_at = created_at
    @published  = false
  end

  def self.find_and_publish id
    # database operation to retrieve data. We'll simulate it for now.
    post = POSTS.find { |post| post.id == id } || NullPost.new
    post.publish
  end

  def publish
    @published = true
  end
end

class NullPost
  def publish
    # some reaction when null condition occurs
  end
end

POSTS = [
  Post.new(
    1,
    "Null Object Practice",
    "Post body",
    Time.new(2017, 01, 12)
  )
]
