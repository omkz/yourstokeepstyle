class Blog < ActiveRecord::Base
  validates :title, :body, presence: true,
            length: {minimum: 5}


  RailsAdmin.config do |config|
    config.model Blog do
      edit do
        # For RailsAdmin >= 0.5.0
        field :title
        field :body, :ck_editor
        # For RailsAdmin < 0.5.0
        # field :description do
        #   ckeditor true
        # end
      end
    end
  end
end
