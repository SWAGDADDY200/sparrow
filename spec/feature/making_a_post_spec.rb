require "rails_helper"

RSpec.feature "Posts", type: :feature do
  scenario "adding a new post" do
    post = Post.create(author: 'Frank Kims', body: 'I love oranges')
    visit "/"
    # binding.pry
    expect(page.body).to have_text(post.body.to_plain_text)
    # fill_in_trix_editor "post_body_trix_input_post",   with: "James"
    
  end
end
