require 'rails_helper'

RSpec.describe 'Recipe' do
  context 'context' do
    before do
    user = User.create(email: 'john@example.com', password: '123123', password_confirmation: '123123');
    book = Recipe.create!(name: 'BBQ', preparation_time: '3Hrs', cooking_time: '2Hrs', description: 'Lorem ipsum is a paragraph', user_id: user.id);
    visit root_path
    click_link('New book')
    end

    it 'page to create a new book' do
    expect(page).to have_field('title')
    expect(page).to have_field('author')
    end
  end
end