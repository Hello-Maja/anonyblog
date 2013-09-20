# GET ===================================================

get '/' do
  @posts = Post.all
  erb :index
end

get '/post/:post_id' do
	@post = Post.find(params[:post_id])
  erb :post
end

get '/edit/:post_id' do
	@post = Post.find(params[:post_id])
	erb :edit
end
 
get '/confirm_delete/:post_id' do
  erb :confirm_delete
end

get '/posts_by_author/' do
	@post = Post.all
  @author_posts = Post.order('author DESC')
  erb :author
end

get '/posts_by_tag/' do
  @tags = Tag.order('tag DESC')
  erb :tag
end

get '/create' do
  erb :create
end

# POST ==================================================


post '/edit/:post_id' do
	redirect "post/#{params[:post_id]}"
end

post '/delete/:post_id' do
end

post '/create' do

end