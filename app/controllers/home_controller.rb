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
  end
  def create_score
    score = Score.new
    score.attend = params[:attend]
    score.sleep = params[:sleep]
    score.lect_sys = params[:lect_sys]
    score.hw_fre = params[:hw_fre]
    score.hw_lvl = params[:hw_lvl]
    score.qz_fre = params[:qz_fre]
    score.qz_lvl = params[:qz_lvl]
    score.tst_jjok = params[:tst_jjok]
    score.tst_lvl = params[:tst_lvl]
    score.save
    
    redirect_to :root
  end
end
