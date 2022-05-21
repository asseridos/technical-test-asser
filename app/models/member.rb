class Member < ApplicationRecord
    has_many :activities
    has_many :notes
    has_many :contents
end
