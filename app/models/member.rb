class Member < ApplicationRecord
    has_one :activity
    has_many :notes
end
