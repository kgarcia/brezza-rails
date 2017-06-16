class HomeController < ApplicationController
  before_action :set_meta
  def index
    @mainTitle = "Welcome in Inspinia Rails Seed Project"
    @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
  end

  def minor
    if user_signed_in?
      @products = current_user.products
    else
      @products = Product.all
    end
    render :layout => "admin"
  end

  def home
    render :layout => "empty"
  end

  def inicio
    set_meta_tags title: 'Intégrate y prospera',
              site: 'Brezza Project',
              description: 'Somos más que un equipo de investigadores, somos economía integrativa - Intégrate y prospera',
              keywords: 'Brezza Project S.A., crowfunding ,crowlending, emprendimiento, proyectos, multiplataforma, venezuela, Brezza Project S.A.',
              charset: 'utf-8',
              canonical: 'https://www.brezzaproject.com/', 
              author: "https://www.brezzaproject.com",
              publisher: "https://www.brezzaproject.com",
              nofollow: true ,
              noindex: true,
              twitter: {
                card: "summary",
                title: "Brezza Project S.A.",
                description: "Somos más que un equipo de investigadores, somos economía integrativa - Intégrate y prospera",
              },
              og: {
                title: "Brezza Project S.A",
                description: "Somos más que un equipo de investigadores, somos economía integrativa - Intégrate y prospera",
                type: "website",
                url: "https://brezzaproject.com/",
              }
            
    @testimonials = Testimonial.all
    @whoare = Whoare.first
    @benefit = Benefit.first
    @step = Step.first
    @sliders = Slider.all
    @ally = Ally.first
    @mensaje = Mensaje.new
    @tags = Tag.all
    @lilpro = Lilpro.first
    @contact = Contact.first
    @categories = Category.all
    @products = Product.order("RAND()").limit(8)
    render :layout => "empty"
    
  end
  def login
    render :layout => "sinmenu"
  end
  def products
    @category = Category.new(:name => "Productos")#, :banner => "landing/header_one.jpg")
    @products = Product.all
    if params[:tag]
      if Tag.where(:name => params[:tag].gsub(/\s+/, " ")).exists?
        @category = Tag.where(:name => params[:tag]).take
        @products = @category.products
        
      end
    else
      if params[:cate]
        
        if Category.where(:name => params[:cate].gsub(/\s+/, " ")).exists?
          @category = Category.where(:name => params[:cate]).take
          @products = @category.products
        end
      end
    end
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
