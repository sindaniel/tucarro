ActiveAdmin.register TypeTruck,  as: 'TipoDeCamiones' do


  menu  :parent => 'Camion', :label => 'Tipo', :priority =>1
  config.filters = false
  config.batch_actions = false



  permit_params :name

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




  index :title => 'Tipos Camion', :column => :name



end
