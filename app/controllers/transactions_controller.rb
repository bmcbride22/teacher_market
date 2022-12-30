class TransactionsController < ApplicationController
  def create
    @resource = Resource.find(params[:resource_id])
    @transaction = Transaction.new
    @transaction.user = current_user
    @transaction.resource = @resource

    respond_to do |format|
      if @transaction.save
        format.html do
          redirect_to profiles_show_transactions_path(current_user.id), notice: 'Transaction was successfully created.'
        end
      else
        format.html { render resource_path(@resource), status: :unprocessable_entity }
      end
    end
  end

  def index
    @transactions = Transaction.where("user_id = #{current_user.id}")
  end
end
