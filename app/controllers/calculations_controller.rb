class CalculationsController < ApplicationController
  def home
    @the_number = params[:number].to_f
    @answer = @the_number*@the_number
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @interest_rate = params[:interest_rate].to_f/100
    @number_of_payments = params[:number_of_payments].to_f
    @present_value = params[:present_value].to_f
    @payment = (@interest_rate*@number_of_payments)/(1-(1+@interest_rate)**(-1*@present_value))
  end

    #"/payment/:interest_rate/:number_of_payments/:present_value

end
