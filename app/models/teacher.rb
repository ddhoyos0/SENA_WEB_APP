class Teacher <Storage::Base
    attr_accessor :nombre, :correo, :fecha_nacimiento, :programa

    def initialize(nombre,correo,fecha_nacimiento,programa)
      self.nombre = nombre
      self.correo = correo
      self.fecha_nacimiento = fecha_nacimiento
      self.programa = programa
    end
    
    def self.table_name
      'teachers'
    end
  
end