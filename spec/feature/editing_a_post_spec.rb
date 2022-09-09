require "rails_helper"

RSpec.feature 'Posts', type: :feature, js: true do
  let(:post_author) { "Jimmoty Demarcus Samson Barthonamew Newman Allawhises III" }
  let(:post_body) { "This is a test" }

  scenario 'Editing a post' do
    post = Post.create(author: "James Matthews", body: "I love tangerines more than oranges")
    visit "/posts/#{post.id}/edit"
    fill_in "Author", with: post_author
    fill_in_trix_editor "post_body_trix_input_post_#{post.id}", with: post_body
    # fill_in("Body", with: post.body.to_plain_text)
    # fill_in post.body.to_plain_text, with: "I love tangerines more than oranges and thats a fact"
    click_on("Add Post")
  end
end
