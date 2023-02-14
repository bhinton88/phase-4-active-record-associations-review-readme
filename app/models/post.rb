class Post < ApplicationRecord
  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags

  # post.author = Author.new(... ) will not work as post.author will return nil
  # until it is defined

  # as such, post.author.create would throw an error

  # instead we must use post = Post.new(.....)

  # new_author = post.create_author(.... )

  #  we can also use build_ if we want to create a new instance but not 
  # persist it to the db 
end
