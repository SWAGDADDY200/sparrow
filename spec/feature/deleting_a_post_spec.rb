require "rails_helper"

RSpec.feature "Posts", type: :feature do
  scenario "Delete a post" do
    post = Post.create(author: "James Matthews", body: "I love oranges")
    visit "/posts/#{post.id}"
    # visit "/"
    # find("#{post.id}", text: "Delete Post")
    click_on('Delete Post')
    # sleep(0.5)
  end
end
