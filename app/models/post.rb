class Post < ActiveRecord::Base

  scope :published, -> { where(published: true) }

end
