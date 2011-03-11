AbstractController::Base.send :extend,  BeforeRender       
ActionController::Base.send :include,  BeforeRenderInstance