require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with title" do
      post = Post.new(
        title: "todo_1"
        )
      expect(post).to be_valid
  end
end
