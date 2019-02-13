class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'],
                                    message: '%{value} is not a valid category' }, presence: true
  validates :address, presence: true
end
