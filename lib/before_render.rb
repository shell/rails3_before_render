module BeforeRender
         
 def append_before_render_filter(*names, &blk)
   _insert_callbacks(names, blk) do |name, options| 
     set_callback(:render, :before, name, options) 
   end                                                             
 end

 def prepend_before_render_filter(*names, &blk)
   _insert_callbacks(names, blk) do |name, options| 
     set_callback(:render, :before, name, options.merge(:prepend => true)) 
   end                                                             
 end  
 
 def skip_before_render_filter(*names, &blk)
   _insert_callbacks(names, blk) do |name, options| 
     skip_callback(:render, :before, name, options)
   end                                                             
 end 
   
 alias_method :before_render, :append_before_render_filter
 alias_method :prepend_before_render, :prepend_before_render_filter
 alias_method :skip_before_render, :skip_before_render_filter

end