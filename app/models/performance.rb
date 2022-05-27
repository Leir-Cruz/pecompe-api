class Performance < ApplicationRecord
    validates_presence_of :title, :description
    validates_uniqueness_of :title
    validates_length_of :title, minimum: 4
    validates_length_of :description, minimum: 10

    has_many :members, dependent: :destroy
    has_many :artists, through: :members
end
