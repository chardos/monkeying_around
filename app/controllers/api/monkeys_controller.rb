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
      render json: {
        status: 500,
        errors: monkey.errors
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


#DELETE CURL COMMAND
#curl -i -H "Accept: application/json" -X DELETE http://localhost:3000/api/monkeys/9.json

#ADD NEW CURL COMMAND
#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"name": "George"}' http://localhost:3000/api/monkeys
