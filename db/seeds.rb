User.destroy_all
Post.destroy_all
PostEditor.destroy_all

3.times do |i|
  user = User.create!(
    name: "User #{i + 1}",
    email: "user#{i + 1}@example.com"
  )
  2.times do |j|
    user.posts.create!(
      title: "Post #{j + 1} by User #{i + 1}",
      content: "This is the content of post #{j + 1} by User #{i + 1}"
    )
  end
end

users = User.all
posts = Post.all
users.each do |user|
  posts.sample(2).each do |post|
    PostEditor.create!(user: user, post: post) unless post.creator == user
  end
end