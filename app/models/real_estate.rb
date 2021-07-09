class RealEstate < ApplicationRecord
  REAL_STATE_OPTIONS = %w(house department land commercial_ground)
  validates :name, :real_state_type, :street, :external_number, :neighborhood, :city, :country, :rooms, :bathrooms, presence: true
  validates :name, :street, :neighborhood, length: { maximum: 128 }
  validates :external_number, length: {maximum: 12 }
  validates :city, length: { maximum: 64}
  validates :internal_number, presence: true, if: :required_internal_num?

  validates :real_state_type, :inclusion => {:in => REAL_STATE_OPTIONS}

  validates_format_of :external_number,  :with => /\A[\d\w\-]+\Z/im
  # validates_format_of :internal_number,  :with => /\A[\d\w\-\s]+\Z/im
  
  def required_internal_num?
    self.real_state_type == 'department' || self.real_state_type == 'commercial_ground'
  end
end
