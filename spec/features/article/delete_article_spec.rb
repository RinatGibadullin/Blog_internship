require "rails_helper"

feature "Delete article" do
  include_context "current user signed in"
  let(:article) { Article.find_by(id: 2) }

  def delete_article(id)
    visit articles_path
    find(:xpath, '//link[@href="/articles/#{id}"]').click
    # expect { click_link 'Destroy' }.to change(Article, :count).by(-1)
  end

  scenario "User deletes article" do
    delete_article(article.id)
  end
end