class Retro < ApplicationRecord
  has_many :ideas, dependent: :destroy
end
