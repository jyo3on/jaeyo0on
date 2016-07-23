# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_post = Post.new
new_post.title = params[:title]
new_post.content = params[:content]
new_post.save

comment = Comment.new
comment.xylitol = "첫번째 리플입니다"
comment.post = new_post
comment.save