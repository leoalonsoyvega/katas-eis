require_relative 'models/Board.rb'

module Battleship
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    
    get '/' do
      render 'batalla/inicio'
    end
 
    post 'create_board' do
      @x_board = params[:x_board]
      @y_board = params[:y_board]
      @board = Board.new @x_board.to_i, @y_board.to_i
      session[:board] = @board
      @info_board = @x_board.to_s + ' x ' + @y_board.to_s
      render 'batalla/inicio'
    end

    post 'create_small_ship' do
      @x_s = params[:x_s]
      @y_s = params[:y_s]
      begin
        session[:board].create_small_ship @x_s.to_i, @y_s.to_i
        @info_s = @x_s.to_s + ' x ' + @y_s.to_s
      rescue OutOfBoardException => excep
        @info_s = excep.message
      end
      render 'batalla/inicio'
    end

    post 'create_large_ship' do
      @x_l = params[:x_l]
      @y_l = params[:y_l]
      begin
        session[:board].create_large_ship @x_l.to_i, @y_l.to_i
        @info_l = @x_l.to_s + ' x ' + @y_l.to_s
      rescue OutOfBoardException => excep
        @info_l = excep.message
      end
      render 'batalla/inicio'
    end

    post 'shoot_ship' do 
      @x_shoot = params[:x_shoot]
      @y_shoot = params[:y_shoot]
      begin
        @info_shoot = session[:board].ship_shoot_at_position @x_shoot.to_i,@y_shoot.to_i
      rescue OutOfBoardException => excep
        @info_shoot = excep.message
      end
      render 'batalla/inicio'
    end

    post 'is_empty' do 
      @x_e = params[:x_e]
      @y_e = params[:y_e]
      begin
        @info_e = (session[:board].is_empty? @x_e.to_i, @y_e.to_i).to_s
      rescue OutOfBoardException => excep
        @info_e = excep.message
      end
      render 'batalla/inicio'
    end
    


  end
end
