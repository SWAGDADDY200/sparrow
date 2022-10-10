require "rails_helper"

RSpec.feature "Posts", type: :feature do
  scenario "commenting on a post" do
    post = Post.create( body: "I love oranges")
    visit "/"
    click_on("COMMENT")
  end
end

