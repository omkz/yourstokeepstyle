class Blog < ActiveRecord::Base
  validates :title, :body, presence: true,
            length: {minimum: 5}
end
