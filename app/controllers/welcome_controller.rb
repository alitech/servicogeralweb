class WelcomeController < ApplicationController
  
  def create

    @welcome = Welcome.new(params[:welcome])

    respond_to do |format|
      if @welcome.save
        format.html { redirect_to @welcome, notice: 'Room was successfully created.' }
        format.json { render json: @welcome, status: :created, location: @welcome }
      end
    end
  end

end