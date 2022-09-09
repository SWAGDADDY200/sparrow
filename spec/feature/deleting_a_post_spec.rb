require "rails_helper"

RSpec.feature 'Posts', type: :feature, js: true do
  scenario 'Visiting the home when there posts created shows the post in a list' do
    post = Post.create(author: "James Matthews", body: "I love oranges")
    visit '/posts/1'
    click_on('Delete Post')
  end
end
