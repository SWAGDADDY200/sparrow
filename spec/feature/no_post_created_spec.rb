require "rails_helper"

RSpec.feature "Posts", type: :feature do
  scenario "no posts to display message" do
    visit "/"
    expect(page.body).to have_text('No posts to display message')
  end
end
