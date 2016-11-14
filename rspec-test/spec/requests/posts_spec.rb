require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      get posts_path
      expect(response).to have_http_status(200)
    end
  end


  describe "GET /posts/1" do
    it "gets the first ppost" do
      first_post = Post.create!(title: "The first post", content: "This is the first post")
      get post_path(first_post)
      expect(response).to have_http_status(200)
      expect(response).not_to have_http_status(404)
    end
  end
end
