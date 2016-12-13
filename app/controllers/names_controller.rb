class NamesController < ApplicationController
  # POST /names
  # POST /names.json
  def create
    @names = Name.new(params[:names])

    respond_to do |format|
      if @names.save
        # Tell the UserMailer to send a welcome email after save
        NameMailer.welcome_email(@names).deliver_later

        format.html { redirect_to(@names, notice: 'User was successfully created.') }
        format.json { render json: @names, status: :created, location: @names }
      else
        format.html { render action: 'new' }
        format.json { render json: @names.errors, status: :unprocessable_entity }
      end
    end
  end
end
