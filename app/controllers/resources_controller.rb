class ResourcesController < ApplicationController
  before_action :set_resource, only: %i[show edit update destroy]
  before_action :set_user

  # GET /resources
  def home
    @resources = Resource.all
  end

  def index
    @resources = if params[:tag].present?
                   @search_query = params[:tag]
                   Resource.tagged_with(params[:tag])
                 elsif params[:subject].present?
                   @search_query = params[:subject]
                   Resource.tagged_with(params[:subject])
                 elsif params[:search]
                   @search_query = params[:search]
                   Resource.search_by_title_description(params[:search])

                 else
                   Resource.all
                 end
  end

  # GET /resources/1 or /resources/1.json
  def show
    @transaction = Transaction.new
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # GET /resources/1/edit
  def edit; end

  # POST /resources or /resources.json
  def create
    @resource = Resource.new(resource_params)
    @resource.user = current_user

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resources/1 or /resources/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1 or /resources/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_resource
    @resource = Resource.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to resources_path
  end

  # Only allow a list of trusted parameters through.
  def resource_params
    params.require(:resource).permit(:title, :price, :photo, :description, :subject_id, :user_id, tag_list: [], subject_list: [],
                                                                                                  resource_files: [])
  end

  def set_user
    @user = current_user
  end
end
