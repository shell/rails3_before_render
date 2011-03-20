Rails3 Before Render 
===========================

## Introduction
  Add a hook like before_filter to your controllers that gets executed between
when your action is completed and the template is rendered.  It can really
DRY up loading some data that is used for views (headers / layouts / etc).

  Plugin was inspired by before_render by Todd Willey, which works for rails2 only. New *ActiveSupport::Callbacks* methods were used, in analogy with ActionDispatch.

Provided methods:

- before_render
- prepend\_before\_render
- skip\_before\_render
   
## Installation       
  
    $ rails plugin install git://github.com/shell/rails3_before_render.git
  
  Warning: Rails 3 only. Rails2 users can use [before_render](<https://github.com/xtoddx/before_render>) by Todd Willey.
 
## Usage
  before_render / prepend\_before\_render / skip\_before\_render works as other filters. Options like :except and :only can be passed to filter.

    class PostsController < ApplicationController
      before_render :ping, :except => [:destroy]
  
      def index; end     
  
      def new; end
    
      def show; end
  
      def destroy; end                                                                          
              
      private
        def ping
          Rails.logger.info "Ping-Pong actions"
        end
    end       
       
  Method ping will be executed after your actions and before template is rendered.

## Testing

  After installing plugin in your app:
  
    $ cd vendor/plugins/rails3_before_render
    $ rake test

## TODO

## Author
Copyright (c) 2011 Vladimir Penkin, released under the MIT license
