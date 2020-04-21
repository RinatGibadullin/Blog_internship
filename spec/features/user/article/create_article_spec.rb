require "rails_helper"

feature "Create article" do
  let(:article) { create :article }

  include_context "current user signed in"

  def create_article(title, content)
    # visit new_article_path
    click_on "New article"
    fill_form(:article, title: title, content: content)
    click_button "Done"
  end

  scenario "User creates new article" do
    visit articles_path
    expect(page).to have_content("New article")
    create_article(article.title, article.content)
    expect(page).to have_content(article.title && article.content)
  end
end