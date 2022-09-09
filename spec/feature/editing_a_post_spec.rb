require "rails_helper"

RSpec.feature 'Posts', type: :feature, js: true do
  scenario 'Visiting the home when there posts created shows the post in a list' do
    post = Post.create(author: "James Matthews", body: "I love tangerines more than oranges")
    visit '/posts/1/edit'
    fill_in "Author", with: "Jimmoty Barthonamew Newman"
    # fill_in "Body", with: "I love tangerines more than oranges and thats a fact"
    # fill_in post.body.to_plain_text, with: "I love tangerines more than oranges and thats a fact"
    click_on("Add Post")
  end
end
