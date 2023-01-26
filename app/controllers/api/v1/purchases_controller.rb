class Api::V1::PurchasesController < ApplicationController
  def create
    
    post = Post.find(params[:post_id])
    purchase = post.purchases.find_or_initialize_by(id: params[:id])
    purchase.update!(purchase_params)
  end

  private
  
  def purchase_params
    params.require(:purchase).permit(
      :price,
      :prefecture_id,
      :delivery_time,
      :purchase_type,
      :price_type,
    )

  end
end
