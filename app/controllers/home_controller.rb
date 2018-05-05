class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:show, :destory, :edit , :new_score]
  def index
    @professors = Professor.all
  end
  
  def new_pro
  end
  def create_pro
    Professor.create(name:params[:name],college:params[:college],major:params[:major])
    
    redirect_to :root
  end
  def show
    
    
    i = 0
    @attend = 0
    @sleep= 0
    @lect_sys = 0 ; @hw_fre = 0 ; @hw_lvl = 0;@qz_fre = 0 ; @qz_lvl = 0 ; @tst_jjok = 0 ;@tst_lvl = 0;
    
    Professor.find(params[:pro_id]).scores.each do |s|
      
      @attend +=s.attend
      @sleep += s.sleep
      @lect_sys+=s.lect_sys
      @hw_fre += s.hw_fre
      @hw_lvl += s.hw_lvl
      @qz_fre += s.qz_fre
      @qz_lvl += s.qz_lvl
      @tst_jjok += s.tst_jjok
      @tst_lvl += s.tst_lvl
      i+=1
    end
    
    @attend/=i
    @sleep/=i
    @lect_sys/=i
    @hw_fre/=i
    @hw_lvl/=i
    @qz_fre/=i
    @qz_lvl/=i 
    @tst_jjok/=i
    @tst_lvl/=i
    
    
  end
  def new_score
      @pro= params[:pro_id]
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
    
    score.professor_id=params[:pro_id]
    
    score.save
    
    redirect_to :root
  end
end
