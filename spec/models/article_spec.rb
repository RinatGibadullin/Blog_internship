require "rails_helper"

RSpec.describe Article do
  subject(:article) { described_class.new(title: "Test article", content: "This is test article for testing with RSpec") }
  before { article.save }

  it "title should be present" do
    article.title = nil
    expect(article).not_to be_valid
  end

  it "content should be present" do
    article.content = nil
    expect(article).not_to be_valid
  end

  # pending "add some examples to (or delete) #{__FILE__}"
end
