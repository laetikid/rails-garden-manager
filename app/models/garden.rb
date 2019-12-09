class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true, format: URI::regexp(%w[http https])
end
