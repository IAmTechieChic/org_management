class UserOrganizationsController < ApplicationController
  before_action :set_user_organization, only: [:show, :edit, :update, :destroy]
  before_filter :get_all_data

  # GET /user_organizations
  # GET /user_organizations.json
  def index
    @user_organizations = UserOrganization.all
  end

  # GET /user_organizations/1
  # GET /user_organizations/1.json
  def show
  end

  # GET /user_organizations/new
  def new
    @user_organization = UserOrganization.new
  end

  # GET /user_organizations/1/edit
  def edit
  end

  # POST /user_organizations
  # POST /user_organizations.json
  def create
    @user_organization = UserOrganization.new(user_organization_params)
    
    org_ids = extract_org_ids
    
    respond_to do |format|
      org_ids.values.each do |org_id|
        @user_organization.organization_id = org_id
        if @user_organization.save
          format.html { redirect_to @user_organization, notice: 'Users organization was successfully created.' }
          format.json { render action: 'index', status: :created, location: @user_organizations }
        else
          format.html { render action: 'new' }
          format.json { render json: @user_organization.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /user_organizations/1
  # PATCH/PUT /user_organizations/1.json
  def update
    org_ids = extract_org_ids
    org_user = UserOrganization.find_by_user_id(params[:user_organization][:user_id])
    if org_user.present?
      org_user.delete
      @user_organization = UserOrganization.new
    end
    respond_to do |format|
      org_ids.values.each do |org_id|
        @user_organization.organization_id = org_id
        if @user_organization.update_attributes(user_organization_params)
          format.html { redirect_to :action => :index, notice: 'Users organization was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @user_organization.errors, status: :unprocessable_entity }
        end
       end
    end
  end

  # DELETE /user_organizations/1
  # DELETE /user_organizations/1.json
  def destroy
    @user_organization.destroy
    respond_to do |format|
      format.html { redirect_to user_organizations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_organization
      @user_organization = UserOrganization.find(params[:id])
    end
    
    def extract_org_ids
      org_ids = params.select{|key,value| key.match(/^org_id\d+/)}
    end
    
    def get_all_data
      @users = User.all
      @organizations = Organization.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_organization_params
      params.require(:user_organization).permit(:organization_id, :user_id)
    end
end
