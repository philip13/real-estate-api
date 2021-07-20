class RealEstate < ApplicationRecord
  REAL_STATE_OPTIONS = %w(house department land commercial_ground)
  validates :name, :real_state_type, :street, :external_number, :neighborhood, :city, :country, :rooms, :bathrooms, presence: true
  validates :name, :street, :neighborhood, :comments, length: { maximum: 128 }
  validates :external_number, length: {maximum: 12 }
  validates :city, length: { maximum: 64}
  validates :internal_number, presence: true, if: :required_internal_num?
  validate :bathrooms, :bathrooms_can_be_zero, unless: :bathrooms_nil?

  validates :real_state_type, :inclusion => {:in => REAL_STATE_OPTIONS}
  validates :country, :inclusion => { :in => Country.all.map(&:alpha2) }

  validates :external_number, format: { with: /\A[\d\w\-]+\Z/im }
  validates :internal_number,  format: { with: /\A[\d\w\-\s]+\Z/im }, if: :required_internal_num?

  def bathrooms_nil?
    self.bathrooms.nil?
  end
  
  def required_internal_num?
    self.real_state_type == 'department' || self.real_state_type == 'commercial_ground'
  end

  def bathrooms_can_be_zero
    if (self.real_state_type == 'land' || self.real_state_type == 'commercial_ground') && self.bathrooms < 0
      errors.add(:bathrooms, "must be greater than or equal to zero")
    elsif (self.real_state_type == 'house' || self.real_state_type == 'department') && (self.bathrooms < 1)
      errors.add(:bathrooms, "must be greater than or equal to 1")
    end
  end
end
