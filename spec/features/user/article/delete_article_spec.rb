require "rails_helper"

feature "Delete article" do
  include_context "current user signed in"
  let(:article) { current_user.articles.first}

  def delete_article(id)
    visit article_path(:article)
    click_button "Delete"
    # expect { click_link 'Destroy' }.to change(Article, :count).by(-1)
  end

  scenario "User deletes article" do
    visit article
    expect(page).to have_content (article.title)
    click_on "Delete"
  end
end