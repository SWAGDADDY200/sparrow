require "rails_helper"

RSpec.describe "GET_edit_post_path", type: :request do
  it "edits a post" do
    new_post = Post.create(author: "Some Guye", body: "I am a post")
    get edit_post_path(new_post)
    expect(response).to have_http_status(:success)
  end
end