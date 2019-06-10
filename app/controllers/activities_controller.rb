class ActivitiesController < OpenReadController
  before_action :set_activity, only: [:show, :update, :destroy]

  # GET /activities
  def index
    @activities = Activity.all
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

  def update
    if @activity.update(activity_params)
      render json: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end



  # # PATCH/PUT /activities/1
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
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def activity_params
      params.require(:activity).permit(:sport, :date, :duration, :user_id, :location)
    end
end

# class ExamplesController < OpenReadController
#   before_action :set_example, only: %i[update destroy]
#
#   # GET /examples
#   # GET /examples.json
#   def index
#     @examples = Example.all
#
#     render json: @examples
#   end
#
#   # GET /examples/1
#   # GET /examples/1.json
#   def show
#     render json: Example.find(params[:id])
#   end
#
#   # POST /examples
#   # POST /examples.json
#
#
#   # PATCH/PUT /examples/1
#   # PATCH/PUT /examples/1.json
# #   def update
# #     if @example.update(example_params)
# #       render json: @example
# #     else
# #       render json: @example.errors, status: :unprocessable_entity
# #     end
# #   end
# #
# #   # DELETE /examples/1
# #   # DELETE /examples/1.json
# #   def destroy
# #     @example.destroy
# #
# #     head :no_content
# #   end
# #
# #   def set_example
# #     @example = current_user.examples.find(params[:id])
# #   end
# #
# #   def example_params
# #     params.require(:example).permit(:text)
# #   end
# #
# #   private :set_example, :example_params
# end
