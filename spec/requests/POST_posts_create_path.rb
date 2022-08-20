require "rails_helper"

RSpec.describe "POST_posts_create_path", type: :request do
  it "redirect to main page" do
    respond_to redirect_to '/'
  end
end