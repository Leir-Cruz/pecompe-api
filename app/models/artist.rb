class Artist < ApplicationRecord
    validates_presence_of :name, :biography, :age
    validates_uniqueness_of :name
    validates_length_of :name, minimum: 4
    validates_length_of :biography, minimum: 10
end