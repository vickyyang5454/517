class CourseOrdersController < ApplicationController
  before_action :set_course_order, only: [:show, :edit, :update, :destroy]

  # GET /course_orders
  # GET /course_orders.json
  def index
    @course_orders = CourseOrder.all
  end

  # GET /course_orders/1
  # GET /course_orders/1.json
  def show
  end

  # GET /course_orders/new
  def new
    @course_order = CourseOrder.new
  end

  # GET /course_orders/1/edit
  def edit
  end

  # POST /course_orders
  # POST /course_orders.json
  def create
    @course_order = CourseOrder.new(course_order_params)

    respond_to do |format|
      if @course_order.save
        format.html { redirect_to @course_order, notice: 'Course order was successfully created.' }
        format.json { render :show, status: :created, location: @course_order }
      else
        format.html { render :new }
        format.json { render json: @course_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_orders/1
  # PATCH/PUT /course_orders/1.json
  def update
    respond_to do |format|
      if @course_order.update(course_order_params)
        format.html { redirect_to @course_order, notice: 'Course order was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_order }
      else
        format.html { render :edit }
        format.json { render json: @course_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_orders/1
  # DELETE /course_orders/1.json
  def destroy
    @course_order.destroy
    respond_to do |format|
      format.html { redirect_to course_orders_url, notice: 'Course order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_order
      @course_order = CourseOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_order_params
      params.require(:course_order).permit(:)
    end
end
