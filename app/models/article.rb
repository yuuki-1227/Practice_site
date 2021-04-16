class Article < ApplicationRecord

   attachment :image

   validates :title, presence: true
   validates :category, presence: true
   validates :body, presence: true, length: { maximum: 200 }

end
