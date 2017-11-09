class OrcamentosController < ApplicationController
  def index
    @orcamentos = Orcamento.all
  end

  def new
    @orcamento = Orcamento.new
    # 1.times { @orcamento.servicos.build}
  end

  def create
    @orcamento = Orcamento.new(orcamento_params)
    if @orcamento.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def orcamento_params
    params.require(:orcamento).permit(:cidade, servicos_attributes: [:id, :nome, :descricao ,:preco])
  end
end
