class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render @company
    end
  end

  private
  def company_params
     params.require(:company).permit(:name, :suffix, :catch_phrase, :email, :start_date, :industry)
  end
end
