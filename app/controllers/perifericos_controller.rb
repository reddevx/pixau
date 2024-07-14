class PerifericosController < ApplicationController
  before_action :fetch_periferico, only: [:edit, :update, :show, :destroy]

  def index
    @perifericos = Periferico.all.order(created_at: :asc)
  end

  def new 
    @periferico = Periferico.new
  end

  def create
    @periferico = Periferico.new(periferico_params)

    return redirect_to periferico_path(@periferico) if @periferico.save

    render :new
  end

  def show; end

  def edit; end

  def update
    return redirect_to periferico_path(@periferico) if @periferico.update(periferico_params)

    render :edit
  end
  
  def destroy  
    @periferico.destroy 

    redirect_to perifericos_path, notice: 'Periférico foi deletado com sucesso.'
  end
  

  private

  def fetch_periferico
    @periferico = Periferico.find(params[:id])
  end

  def periferico_params
    params.require(:periferico).permit(:nome, :price, :color, :rgb)
  end
end
