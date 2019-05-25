require 'spec_helper'

feature "Test" do
  scenario "it test if the first page works" do
    visit '/'
    expect(page).to have_content("Welcome to CHITTER")
  end
end