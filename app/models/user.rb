class User < ActiveRecord::Base
    acts_as_voter

    belongs_to :posts
    has_many :likes
    has_many :liked_posts, through: :likes, source: :post
    
      def is_like? (post)
         Like.find_by(current_user = self.id, post_id = post.id).present?
        end
        
end
