require "rails_helper"

RSpec.describe "DELETE_post_path", type: :request do
  it "Delete a post" do
    new_post = Post.create(author: "Some Guye", body: "I am a post")
    delete post_path(new_post)

    expect(flash[:success]).to eq('Post was successfully destroyed!')
    expect(response).to redirect_to root_path
  end
end