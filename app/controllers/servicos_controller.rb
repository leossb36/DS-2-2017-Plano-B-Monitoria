class ServicosController < ApplicationController
  def index
    @servicos = Servico.all
  end

  def new
    @servico = Servico.new
    # 1.times { @servico.orcamentos.build}
  end

  def create
    @servico = Servico.new(servico_params)
    if @servico.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def servico_params
    params.require(:servico).permit(:nome, :descricao, :preco, orcamentos_attributes: [:id, :cidade])
  end
end
