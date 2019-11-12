class Users::SignUpController < ApplicationController

  require "payjp"

  def info
    @user = User.new
  end

  def tel
    binding.pry
    session[:user] = user_params
    @user = User.new(user_params)
  end

  def address
    binding.pry
    session[:user]["phone_number"] = user_params[:phone_number]
    @address = Address.new
  end

  def pay
    binding.pry
    session[:address] = address_params
    @creditcard = Creditcard.new
  end

  def save
    @user = User.new(session[:user])
    @user.build_address(session[:address])
    @user.save
    binding.pry

    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params['payjpToken'].blank?
      redirect_to action: "info"
    else
      customer = Payjp::Customer.create(
        card: params['payjpToken'],
      ) #念の為metadataにuser_idを入れたがなくてもOK
      @creditcard = Creditcard.new(user_id: @user.id, customer_id: customer.id, card_id: customer.default_card)
    end

    session[:id] = @user.id
    sign_in User.find(session[:id]) unless user_signed_in?
    redirect_to comp_users_sign_up_index_path
    binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :name_kana, :nickname, :birthday, :family, :family_kana, :phone_number)
  end

  def address_params
    params.require(:address).permit(:family, :name, :family_kana, :name_kana, :postal, :region, :city, :address, :building, :tel_number)
  end
end
