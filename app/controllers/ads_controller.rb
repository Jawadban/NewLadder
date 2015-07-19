class AdsController < ApplicationController
  before_action :set_ad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /ads
  def index
    # @ads = Ad.all
    @ad = Ad.where(user_id: current_user)
  end

  # GET /ads/1
  def show
  end

  # GET /ads/new
  def new
    @ad = current_user.ads.build
  end

  # GET /ads/1/edit
  def edit
  end

  # POST /ads
  def create
    @ad = current_user.ads.build(ad_params)
    @ad.price = @ad.variations * 5


    respond_to do |format|
      if @ad.save
        format.html { render "create", notice: 'Ad was successfully created.' }
        format.json { render :show, status: :created, location: @ad }
      else
        format.html { render :new }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /ads/1
  def update
    @ad = current_user.ads.build(ad_params)
    @ad.price = @ad.variations * 5

    
 customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@ad.price*100).to_i,
      # :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      # redirect_to ads_path

    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to @ad, notice: 'Ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad }
      else
        format.html { render :edit }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  def destroy
    @ad.destroy
    respond_to do |format|
      format.html { redirect_to ads_url, notice: 'Ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_params
    params.require(:ad).permit(:variations, :description)
    end
end
