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
    @lilpro = Lilpro.last
    @contact = Contact.last
    @categories = Category.all
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
