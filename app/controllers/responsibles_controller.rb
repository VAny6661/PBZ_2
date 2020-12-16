class ResponsiblesController < InheritedResources::Base

  private

    def responsible_params
      params.require(:responsible).permit()
    end

end
