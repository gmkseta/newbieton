class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:show, :destory, :edit]
  def index
    @professors = Professor.all
  end
  
  def new_pro
  end
  def create_pro
    Professor.create(name:params[:name],college:params[:college],major:params[:major])
    
    redirect_to :root
  end
  def new_score
    score = Score.new
    score.attend = params[:attend]
    
    Score.create(attend:params[:attend],sleep:params[:sleep],lect_sys:params[:lect_sys],hw_fre:params[:hw_fre],hw_lvl:params[:hw_lvl],qz_fre:params[:qz_fre],qz_lvl:params[:qz_lvl],tst_jjok:params[:tst_jjok],tst_lvl:params[:tst_lvl])
  end
end
