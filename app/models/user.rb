class User < ApplicationRecord
    
     has_secure_password
     def posts
         #puts "hello iam"
         Post.where(user_id: self.id)
     end
end
