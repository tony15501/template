module HomeHelper

	def logo
        logo_path = "/assets/logo1-default.png"
        logo_path = Home.first.logo if Home.first
        logo_path
  end


  def slider
        slider_path ="/assets/1.png"
        slider_path = Home.first.logo if Home.first
        slider_path
  end


		def promocional

        promo =  "<span>Unify is a clean and fully responsive incredible Template.</span>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi  vehicula sem ut volutpat. Ut non libero magna fusce condimentum eleifend enim a feugiat corrupti quos.</p> "
        if Home.first
      
            if !Home.first.promocional.blank?
                 
                promo = Home.first.promocional
            end
        end
        promo.html_safe
    end




	def servicio(service)
		servicio =  "<h3>FREE Updates</h3> <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum animi..</p> "
		if Home.first
			case service
			when 1
				servicio = Home.first.servicio1 if !Home.first.servicio1.blank? 
			when 2
				servicio = Home.first.servicio2 if !Home.first.servicio2.blank? 
			when 3
				servicio = Home.first.servicio3 if !Home.first.servicio3.blank? 	
			end
		end
		servicio.html_safe
	end
end
