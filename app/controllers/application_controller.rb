class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource


  # Layout per resource_name AND action
  def layout_by_resource
    if devise_controller? && action_name == "new"
     "sinmenu"
    end
  end
  
  def set_meta
    set_meta_tags title: controller_name.titleize+' | Administración',
              site: 'Brezza Project',
              description: 'Administración de Brezza Project',
              keywords: 'Brezza Project S.A., crowfunding ,crowlending,emprendimiento, proyectos, multiplataforma, venezuela, Brezza Project S.A.',
              charset: 'utf-8',
              nofollow: true ,
              noindex: true, 
              reverse: true
              
  end
end
