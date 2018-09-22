class Movie < ApplicationRecord
    has_attached_file :image, styles: { medium: "200x300#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
belongs_to :user
has_many :reviews



def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
        where(nil)
    end
  end
  
  
end
