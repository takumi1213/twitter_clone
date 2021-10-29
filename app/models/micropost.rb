class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id ,presence: ture
  validates :content ,presence: ture , length:{maximum: 240}
end
