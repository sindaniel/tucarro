class Truck < ActiveRecord::Base
  belongs_to :brand_truck
  belongs_to :type_truck

  HUMANIZED_ATTRIBUTES = {
      :nombre => 'Nombre',
      :brand_truck_id => 'Marca caminion',
      :type_truck_id => 'Tipo camion',
      :created_at => 'Creado',
      :updated_at => 'Actualizado'
  }

  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end


  validates :nombre, presence: true
  validates :brand_truck_id, presence: true
  validates :type_truck_id, presence: true

end
