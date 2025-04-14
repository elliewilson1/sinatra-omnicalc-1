require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_root_calc)
end

get("/random/new") do
  erb()
end

get("/payment/new") do
  erb()
end

get("/square/results") do
  erb(:square_results)
end

get("/") do
  erb(:new_square_calc)
end
