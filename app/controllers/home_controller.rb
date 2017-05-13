class HomeController < ApplicationController
  def index
    @mainTitle = "Welcome in Inspinia Rails Seed Project"
    @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
  end

  def minor
    render :layout => "admin"
  end

  def home
    render :layout => "empty"
  end

  def inicio
    @testimonials = Testimonial.all
    @whoare = Whoare.first
    @benefit = Benefit.first
    @step = Step.first
    
    render :layout => "empty"

  end
  def login
    render :layout => "sinmenu"
  end
  def products
    render :layout => "front"
  end
  def detail
    render :layout => "front"
  end
  def aliarse
    render :layout => "front"
  end
  def soon
    render :layout => "empty"
  end
end
