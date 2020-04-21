FactoryBot.define do
  factory :article do
    title { "Ruby on Rails FactoryBot testing!" }
    content { "Overall with RSpec set up and our Factory Bot in place, we can write many different tests for our Ruby and Rails projects. RSpec provides an easy API to write assertions for our tests, while Factory Bot allows us to create stubbed in data for our tests. Both of these libraries are very helpful for testing more complex things, such receiving the correct responses from HTTP requests. I hope this helped you set up and learn some basic testing with RSpec and Factory Bot!" }
    status { "created" }
    user
  end
end
