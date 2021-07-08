require 'rails_helper'

RSpec.describe RealEstate, type: :model do
  it "has a valid factory" do
    expect( build(:real_estate)).to be_valid
  end

  let(:real_estate) { build(:real_estate) }

  describe "ActiveModel Validations" do
    it "is not valid without a name" do
      real_estate.name = nil
      expect(real_estate).to_not be_valid
    end

    it "is not valid without a real_state" do
      real_estate.real_state_type = nil
      expect(real_estate).to_not be_valid
    end
    
    it "is not valid without a street" do
      real_estate.street = nil
      expect(real_estate).to_not be_valid
    end

    it "is not valid without a external_number" do
      real_estate.external_number = nil
      expect(real_estate).to_not be_valid
    end

    it "is not valid without a neighborhood" do
      real_estate.neighborhood = nil
      expect(real_estate).to_not be_valid
    end

    it "is not valid without a city" do
      real_estate.city = nil
      expect(real_estate).to_not be_valid
    end

    it "is not valid without a country" do
      real_estate.country = nil
      expect(real_estate).to_not be_valid
    end

    it "is not valid without a rooms" do
      real_estate.rooms = nil
      expect(real_estate).to_not be_valid
    end
    
    it "is not valid without a bathrooms" do
      real_estate.bathrooms = nil
      expect(real_estate).to_not be_valid
    end

    it "name is not valid with length greater that 128" do
      real_estate.name = (0...129).map { (65 + rand(26)).chr }.join
      expect(real_estate).to_not be_valid
    end
    
    it "real_estate_type as office is not valid " do
      real_estate.real_state_type = "office"
      expect(real_estate).to_not be_valid
    end

    it "street is not valid with length greater that 128" do
      real_estate.street = (0...129).map { (65 + rand(26)).chr }.join
      expect(real_estate).to_not be_valid
    end
    
    it "external_number is not valid with length greater that 12" do
      real_estate.external_number = (0...13).map { (65 + rand(26)).chr }.join
      expect(real_estate).to_not be_valid
    end

    it "Internal_number is required if real_state_type is department" do
      real_estate.real_state_type = 'department'
      real_estate.internal_number = nil
      expect(real_estate).to_not be_valid
    end

    it "Internal_number is required if real_state_type is commercial_ground" do
      real_estate.real_state_type = 'commercial_ground'
      real_estate.internal_number = nil
      expect(real_estate).to_not be_valid
    end

    it "neighborhood is not valid with length greater that 128" do
      real_estate.neighborhood = (0...129).map { (65 + rand(26)).chr }.join
      expect(real_estate).to_not be_valid
    end

    it "city is not valid with length greater that 64" do
      real_estate.city = (0...65).map { (65 + rand(26)).chr }.join
      expect(real_estate).to_not be_valid
    end
  end
end
