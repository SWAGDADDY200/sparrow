require "rails_helper"

RSpec.feature 'Posts', type: :feature do
  scenario 'Visiting the home when there posts created shows the post in a list' do
    visit '/'
    # expect(page.body).to match_array(@posts)
    let(:post) { Post.last }
    expect(page.body).to have_css(@post.id, text: "blah blah blah")
  end
end
