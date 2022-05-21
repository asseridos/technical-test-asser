class Member < ApplicationRecord
    has_many :activities
    has_many :notes
    has_many :contents
    has_and_belongs_to_many :tags, join_table: :members_tags
end
