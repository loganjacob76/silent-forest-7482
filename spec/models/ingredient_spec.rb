require 'rails_helper'

RSpec.describe Ingredient do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :calories }
    it { should validate_numericality_of :calories }
  end

  describe 'relationships' do
    it { should have_many :dishes }
  end
end