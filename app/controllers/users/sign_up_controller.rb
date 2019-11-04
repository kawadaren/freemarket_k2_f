class Users::SignUpController < ApplicationController

  def info
    @user = User.new
  end

  def tel
    binding.pry
    session[:user] = user_params
  end

  def address
    @address = Address.new
  end

  def pay
    session[:address] = address_params
    binding.pry
  end

  def comp
  end

  def regist_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :name_kana, :nickname, :birthday, :family, :family_kana, :phone_number)
  end

  def address_params
    params.require(:address).permit(:family, :name, :family_kana, :name_kana, :postal, :region, :city, :address, :building, :tel_number)
  end


end
