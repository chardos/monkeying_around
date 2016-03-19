class Api::MonkeysController <  ApplicationController
  def index
    render json: Monkey.all
  end
end
