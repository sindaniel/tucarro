ActiveAdmin.register BrandTruck,  as: 'MarcaDeCamiones' do

  menu  :parent => 'Camion', :label => 'Marcas', :priority =>1
  config.filters = false
  config.batch_actions = false


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name
  #
  # or
  #

    index do
      column :name
      actions
    end

  actions :all, :except => [:show]


   form do |f|
     f.inputs "Details" do
       f.input :name
     end
     f.actions
   end




   index :title => 'Marcas Camion', :column => :name




end
