class Comment < ActiveRecord::Base
  default_scope order: 'comments.created_at ASC'
  include ActsAsCommentable::Comment

  attr_accessible :comment, :user_id

  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates_length_of :comment, minimum: 1
end