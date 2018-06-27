module Admin
  class PerksController < AdminController
    def index
      @perks = Perk.all
    end

    def show
      set_perk
    end

    def new
      @perk = Perk.new
    end

    def edit
      set_perk
    end

    def destroy
      set_perk
      @perk.destroy
      redirect_to admin_perks_path
    end

    def update
      set_perk
      if @perk.update(perks_params)
        redirect_to admin_perks_path
      end
    end

    def create
      @perk = Perk.new(perks_params)
      @perk.save
      redirect_to admin_perks_path
    end

    private

    def set_perk
      @perk = Perk.find(params[:id])
    end

    def perks_params
      params.require(:perk).permit(:name, :desc, :point_1, :point_2, :point_3, :point_4, :point_5, :point_6)
    end
  end
end
