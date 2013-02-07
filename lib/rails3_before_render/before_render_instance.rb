module Rails3BeforeRender
  module BeforeRenderInstance
    extend ActiveSupport::Concern

    included do
      alias_method_chain :render, :before_render_filter
      define_callbacks :render
    end

    def render_with_before_render_filter *opts, &blk
      run_callbacks :render, action_name do
        render_without_before_render_filter(*opts, &blk)
      end
    end

  end
end

ActionController::Base.send :include,  Rails3BeforeRender::BeforeRenderInstance