class Movie < ApplicationRecord
  belongs_to :artist, dependent: :destroy
end
