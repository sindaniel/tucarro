ActiveAdmin.register Truck,  as: 'Camiones' do


  permit_params :nombre, :brand_truck_id,  :type_truck_id, :kilometraje, :estado, :collection, :placa, :color, :tipocombustible


  ESTADO = [['Nuevo',1], ['Usado',2]]

  GASOLINA = [['Gasolina',1], ['Diesel',2], ['Gas',3]]

  SINO = [['No',0], ['Si',1]]


  form do |f|
    f.inputs 'General' do
      f.input :nombre
      f.input :brand_truck_id, as: :select, collection: BrandTruck.all
      f.input :type_truck_id, as: :select, collection: TypeTruck.all
      f.input :kilometraje
      f.input :estado, :as => :select,
              :collection => ESTADO,
              include_blank: false
      f.input :placa
      f.input :color
      f.input :tipocombustible, :as => :select,
              :collection => GASOLINA,
              include_blank: false,
              :label =>'Tipo combustible'
    end


    f.inputs 'Detalles' do
      f.input :marcacaja, :label => 'Marca caja'
      f.input :marcatransmision, :label => 'Marca Transmision'
      f.input :tipocupo, :label => 'Tipo cupo'
      f.input :empresaafiliada, :label => 'Empresa afiliado'
      f.input :capacidadcarga, :label => 'Capacidad afiliado'
      f.input :capacidadpasajeros, :label => 'Capacidad pasajeros'
      f.input :cilindrajecc, :label => 'Cilindraje CC'
      f.input :numeroejes, :label => 'Numero ejes'
      f.input :estadollantas, :label => 'Estado de llantas'
      f.input :tipodecaja, :label => 'Tipo caja'


    end


    f.inputs 'Otros' do
      f.input :quintarueda,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label => 'Quinta rueda'
      f.input :trailer,   :as => :select,
              :collection => SINO,
              include_blank: false
      f.input :negociable,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Negociable'
      f.input :vigia,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Vigias'
      f.input :motorreparado,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Motor Reparado'
      f.input :cajareparada,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Caja Reparado'
      f.input :transmisionreparada,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Transmision  Reparado'
      f.input :frenosabs,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Frenos  ABS'
      f.input :sillareclinable,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Silla reclinable'
      f.input :bano,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Baño'
      f.input :descansapies,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Descansa pies'
      f.input :tv,   :as => :select,
              :collection => SINO,
              include_blank: false
      f.input :pantallaindividual,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Pantalla individual'
      f.input :wifi,   :as => :select,
              :collection => SINO,
              include_blank: false
      f.input :audio,   :as => :select,
              :collection => SINO,
              include_blank: false
      f.input :unicodueno,   :as => :select,
              :collection => SINO,
              include_blank: false,
              :label =>'Unico dueño'




    end
    f.actions
  end




end
