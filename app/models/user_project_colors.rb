class UserProjectColors < ActiveRecord::Base
  unloadable

  validates :color, allow_blank: true, format: { with: /\A[\da-fA-F]{6}\z/ }

end
