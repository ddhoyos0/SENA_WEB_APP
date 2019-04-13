class Student
  attr_accessor :nombre, :correo, :fecha_nacimiento, :programa

  def initialize(nombre,correo,fecha_nacimiento,programa)
    self.nombre = nombre
    self.correo = correo
    self.fecha_nacimiento = fecha_nacimiento
    self.programa = programa
  end
  def self.all
    [
      Student.new('jose', 'jose@gmail.com','24/03/1994','Moda'),
      Student.new('pedro', 'pedro@gmail.com', '31/12/1996','Diseño'),
      Student.new('carlos', 'car@gmail.com', '23/02/1885', 'Mecanica'),
      Student.new('camilo', 'camilo@gmail.com', '21/08/1990', 'ADSI')
    ]
  end
end
