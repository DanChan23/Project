class LoginsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  
  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end

  def find
      puts params[:username]
      puts params[:password]
      if Account.where(username: params[:username]).exists? then
        puts "true"
        id = Account.where(username: params[:username]).pluck(:id).first
        puts id
        user = Person.where("account_id = ?", id).pluck(:id).first
        session[:user_id] = user
        puts session[:user_id]
        redirect_to "http://localhost:3000/reservations", "Successfully Logged In!"
      end

      if Account.where("username = ?", params[:username]).pluck(:password).first == params[:password]
        puts "both"
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:username, :password, :email_add, :user_level)
      params.require(:people).permit(:account_id, :id)
    end
end