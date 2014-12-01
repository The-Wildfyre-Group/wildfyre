class BudgetsController < ApplicationController
  before_action :find_budget, except: [:index, :new, :create]
  
  def index
    @budgets = Budget.all
  end
  
  def new
    @budget = Budget.new
    budget_items = @budget.budget_items.build
  end
  
  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      Activity.track(current_user.id, nil, "Added Budget", params[:controller], @budget.id, true)
      redirect_to budgets_path
    else
      render :new
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    if @budget.update_attributes(budget_params)
      redirect_to budgets_path
    else
      render :edit
    end
  end
  
  def destroy
    @budget.destroy
    redirect_to budgets_path
  end
  
  protected
  
  def find_budget
    @budget = Budget.friendly.find(params[:id])
  end
  
  def budget_params
    params.require(:budget).permit(:as_of, :date_until, :name, budget_items_attributes: [:id, :item, :date_of_occurrence, :amount, :_destroy])
  end
end
