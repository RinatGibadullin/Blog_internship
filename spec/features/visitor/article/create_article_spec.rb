require "rails_helper"

feature "Create article" do

  scenario "Visitor can't create new article" do
    visit new_article_path
    expect(page).to have_content "You need to sign in"
  end
end