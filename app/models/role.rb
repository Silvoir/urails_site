class Role < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :assignments
  has_many :users, through: :assignments
end
