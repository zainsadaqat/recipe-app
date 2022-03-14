require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context 'Recipes' do
    it 'Show Recipes' do
      expect(page).to have_text('recipes')
    end
  end
end
