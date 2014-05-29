class Comentario < ActiveRecord::Base
  belongs_to :post
  
   validates_presence_of :nombre
   validates_length_of :nombre, :within => 2..20
   validates_presence_of :comentario
end
