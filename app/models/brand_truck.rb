class BrandTruck < ActiveRecord::Base

  HUMANIZED_ATTRIBUTES = {
      :name => 'Nombre',
       :created_at => 'Creado',
      :updated_at => 'Actualizado'
  }

  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end






end


