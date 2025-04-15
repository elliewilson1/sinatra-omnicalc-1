require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square_calc)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("user_number")

  @the_result = @the_num.to_f ** 2

  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("user_number")

  @the_result = @the_num.to_f ** 0.5

  erb(:square_root_results)
end

get("/random/new") do
  erb(:new_random)
end

get("/random/results") do
  @the_min = params.fetch("user_min").to_f

  @the_max = params.fetch("user_max").to_f

  @the_result = rand(@the_min..@the_max)

  erb(:random_results)
end

get("/payment/new") do
  erb(:new_payment)
end

get("/payment/results") do
  @APR = params.fetch("APR").to_f

  @user_APR = @APR.to_fs(:percentage, {:precision => 4})
  
  @rate = @APR / 1200

  @years = params.fetch("years").to_i

  @periods = @years * 12

  @principal = params.fetch("principal").to_f

  @user_principal = @principal.to_fs(:currency)

  @denominator = 1 - (1 + @rate) ** -@periods

  @numerator = @rate * @principal

  @payment = @numerator / @denominator

  @the_result = @payment.to_fs(:currency)

  erb(:payment_results)
end
