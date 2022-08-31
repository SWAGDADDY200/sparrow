require "rails_helper"

RSpec.feature 'Posts', type: :feature, js: true do
  scenario 'Visiting the home when there posts created shows the post in a list' do
    post = Post.create(author: "James Matthews", body: "I love oranges")
    visit '/'
    expect(page.body).to have_text(post.body.to_plain_text)
    expect(page.body).to have_text(post.author)

  end
end
