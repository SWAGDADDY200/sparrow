require "rails_helper"

RSpec.feature "Posts", type: :feature do
  scenario "Delete a post" do
    post = Post.create( body: "I love oranges")
    visit "/"
    # visit "/"
    # find("#{post.id}", text: "Delete Post")
    click_on("DELETE POST")
    # sleep(0.5)
  end
end
