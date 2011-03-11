module BeforeRenderInstance      
  def self.included klass
    klass.send :alias_method_chain, :render, :before_render_filter
    klass.send :define_callbacks, :render
  end

  def render_with_before_render_filter *opts, &blk
    run_callbacks :render, action_name do
      render_without_before_render_filter(*opts, &blk)
    end
  end
  
end