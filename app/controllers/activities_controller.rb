class ActivitiesController < ProtectedController
  before_action :set_activity, only: [:show, :update, :destroy]

  # GET /activities
  def index
    @activities = current_user.activities.all
    render json: @activities
  end

  # GET /activities/1
  def show
    render json: @activity
  end

  # POST /activities
  # def create
  #   @activity = Activity.new(activity_params)
  #   if @activity.save
  #     render json: @activity, status: :created, location: @activity
  #   else
  #     render json: @activity.errors, status: :unprocessable_entity
  #   end
  # end

  def create
    @activity = current_user.activities.build(activity_params)

    if @activity.save
      render json: @activity, status: :created
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activities/1
  def update
    if @activity.update(activity_params)
      render json: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end
  # DELETE /activities/1
  def destroy
    @activity.destroy

    head :no_content
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = current_user.activities.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def activity_params
      params.require(:activity).permit(:sport, :date, :duration, :user_id, :location)
    end
end
