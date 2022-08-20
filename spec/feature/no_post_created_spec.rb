require "rails_helper"

RSpec.feature "Posts", type: :feature do
  scenario "no posts to display message" do
    visit "/"
    expect(page.body).to have_text('No posts to display message')
    # fill_in "Author", with: "James"
    # page.find_field('Body')
    # fill_in "Body", with: 'Hello'
    # exppect(page).to have_field('#Body')
    # fill_in_trix_editor "post_body_trix_input_post",   with: "James"
    # click_on(Add Post)
  end
end
