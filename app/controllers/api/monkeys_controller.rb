class Api::MonkeysController <  ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    render json: Monkey.all
  end

  def show
    monkey = Monkey.find(params[:id])
    render json: monkey
  end

  def create
    monkey = Monkey.new(monkey_params)
    if monkey.save
      render json: {
        status: 200,
        message: "Successfully created a monkey",
        monkey: monkey
      }.to_json
    else
      render status: 500, json: {
        errors: monkey.errors
      }.to_json
    end
  end

  def update
    monkey = Monkey.find(params[:id])
    if monkey.update(monkey_params)
      render json: {
        status: 200,
        message: "Successfully updated a monkey",
        monkey: monkey
      }.to_json
    end
  end

  def destroy
    monkey = Monkey.find(params[:id])
    monkey.destroy
    render json:{
      status: 200,
      message: 'Successfully deleted monkey'
    }.to_json
  end

  private

  def monkey_params
    params.require('monkey').permit('name')
  end

end
