class DemoController < ApplicationController

  layout false
  
  def index
    # render('demo/hello')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    
    # render('demo/index')
    # redirect_to(:controller => 'demo', :action => 'index')
  end

  def about
    render('about_us')
  end
  
  def contact
    if ['us', 'ca'].include?(params[:country])
      @phone = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phone = '(020) 7946 1234'
    else
      @phone = '+1 (987) 654-3210'
    end
    render('contact_us')
  end
end
