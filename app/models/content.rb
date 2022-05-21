class Content < ApplicationRecord
  belongs_to :member

  validates :url, presence: true
end
