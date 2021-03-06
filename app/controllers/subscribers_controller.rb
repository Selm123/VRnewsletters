class SubscribersController < ApplicationController
  before_action :set_subscriber, only: %i[ show edit update destroy ]
  before_action :check_for_admin, :except => [:new, :create, :show]
  # GET /subscribers or /subscribers.json
  def index
    @subscribers = Subscriber.all
  end

  # GET /subscribers/1 or /subscribers/1.json
  def show
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # GET /subscribers/1/edit
  def edit
  end

  # POST /subscribers or /subscribers.json
  def create

    @subscriber = Subscriber.create(subscriber_params)
    redirect_to @subscriber, notice: "Subscriber was successfully created."

  end

  # PATCH/PUT /subscribers/1 or /subscribers/1.json
  def update
    respond_to do |format|
      if @subscriber.update(subscriber_params)
        format.html { redirect_to @subscriber, notice: "Subscriber was successfully updated." }
        format.json { render :show, status: :ok, location: @subscriber }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribers/1 or /subscribers/1.json
  def destroy
    @subscriber.destroy
    respond_to do |format|
      format.html { redirect_to subscribers_url, notice: "Subscriber was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscriber_params
      params.require(:subscriber).permit(:email, :first_name, :last_name, :software, :hardware, :news, :offers )
    end
end
