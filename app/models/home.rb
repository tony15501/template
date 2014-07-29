class Home < ActiveRecord::Base
	 has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/logo1-default.png"

	 has_attached_file :slider, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/1.png"


  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/


  validates :promocional, uniqueness:{message: "No puede estar repetido"}, presence: {message: "el campo debe ser obligatorio"}

 
	# validates_attachment :logo,  :presence => true,
 #  :content_type => { :content_type => ["image/png", "image/jpeg", "image/jpg"] },
 #  :size => { :in => 0..1.megabytes}

 #  validates_attachment :slider,  :presence => true,
 #  :content_type => { :content_type => ["image/png", "image/jpeg", "image/jpg"] },
 #  :size => { :in => 0..1.megabytes}

 

 #  validates :logo, dimensions: { width: 103, height: 39 }
 #  validates :slider, dimensions: { width: 495, height: 224 }

 #  validates_presence_of :logo
 #  validates_presence_of :slider
  
	# def img_dimensions
	# 	if logo.queued_for_write[:original] || slider.queued_for_write[:original]
	# 		dimensions = Peperclip::Goemetry.from_file(logo.queued_for_write[:original].path)

	#  		errors.add(:logo, "las medidas de la imagen deben ser 103 ancho 39 altura ") unless dimensions.height> 103|| dimensions.width> 39

	#  			errors.add(:slider, "las medidas de la imagen deben ser 495 ancho 224 altura ") unless dimensions.height> 495|| dimensions.width> 224
			
	# 	else
	# 		true
	# 	end
		
	# end

end
