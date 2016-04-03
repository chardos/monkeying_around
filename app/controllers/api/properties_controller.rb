class Api::PropertiesController <  ApplicationController
  skip_before_filter :verify_authenticity_token


  def index
    render json: Property.all.where(user_id: current_user.id)
  end

  def show
    property = Property.find(params[:id])
    render json: property
  end

  def create
    new_params = property_params
    new_params[:user_id] = current_user.id
    property = Property.new(new_params)
    if property.save
      render json: {
        status: 200,
        message: "Successfully created a property",
        property: property
      }.to_json
    else
      render status: 500, json: {
        errors: property.errors
      }.to_json
    end
  end

  def update
    property = Property.find(params[:id])
    if property.update(property_params)
      render json: {
        status: 200,
        message: "Successfully updated a property",
        property: property
      }.to_json
    end
  end

  def destroy
    # check the users token here
    property = Property.find(params[:id])
    property.destroy
    render json:{
      status: 200,
      message: 'Successfully deleted property'
    }.to_json
  end

  private

  def property_params
    @property_params ||= params.require('property').permit(['address', 'price','user_id'])
  end

end
