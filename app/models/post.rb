class Post < ActiveRecord::Base
    acts_as_votable
    belongs_to :user
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    
          def is_like? (post)
         Like.find_by(current_user = self.id, post_id = post.id).present?
        end
        end
