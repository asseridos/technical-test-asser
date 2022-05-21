class Member < ApplicationRecord
    has_one :activity
    has_many :notes
    has_many :contents
end
