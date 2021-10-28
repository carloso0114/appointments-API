class Car < ApplicationRecord
  validates :name, presence: true
  validates :model, presence: true
  validates :description, presence: true
  validates :image, presence: true

  def attach_image
    self.image = image.url if image.attached?
  end
end
