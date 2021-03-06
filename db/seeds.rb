# Añadir admin(s)
Admin.create(email: 'moisesnandres@gmail.com', password: '12341234')
# Crear los sectores
Sector.create(nombre: 'Virgen de Yauca', capacidad: 63)
Sector.create(nombre: 'San Martin de Porras', capacidad: 48)
Sector.create(nombre: 'Virgen del Carmen', capacidad: 30)
Sector.create(nombre: 'San Luis Gonzaga', capacidad: 30)
Sector.create(nombre: 'Santa Rita', capacidad: 45)
Sector.create(nombre: 'Cristo Rey', capacidad: 16)
Sector.create(nombre: 'Luren I', capacidad: 30)
Sector.create(nombre: 'Luren II', capacidad: 30)
Sector.create(nombre: 'Luren III', capacidad: 36)
Sector.create(nombre: 'San Pedro', capacidad: 42)
Sector.create(nombre: 'San Pablo', capacidad: 56)
# Añadir beneficiarios
Person.create(nombres: 'Pedro', apellidos: 'Mitacc', fecha_nac: '1990-01-10', fecha_fallecimiento: '2011-05-12', obituario: true, sector_id: 2)
Person.create(nombres: 'Fernando', apellidos: 'Alvarez', fecha_nac: '1990-02-25', fecha_fallecimiento: '2005-01-01', obituario: true, sector_id: 4)
Person.create(nombres: 'Leonardo', apellidos: 'Yataco', fecha_nac: '1990-05-15', fecha_fallecimiento: '2006-09-11', obituario: true, sector_id: 3)
Person.create(nombres: 'Karla', apellidos: 'Herrera', fecha_nac: '1990-02-13', fecha_fallecimiento: '2012-05-16', obituario: true, sector_id: 1)
Person.create(nombres: 'Moises', apellidos: 'Sandoval', fecha_nac: '1990-12-09', fecha_fallecimiento: '2012-09-01', obituario: true, sector_id: 2)
Person.create(nombres: 'Fabiola', apellidos: 'Martinez', fecha_nac: '1990-10-01', fecha_fallecimiento: '2010-01-01', obituario: true, sector_id: 3)
Person.create(nombres: 'Mariano', apellidos: 'Mendoza', fecha_nac: '1990-05-12', fecha_fallecimiento: '2014-12-11', obituario: true, sector_id: 5)
Person.create(nombres: 'Belinda', apellidos: 'Salazar', fecha_nac: '1990-09-25', fecha_fallecimiento: '2004-01-31', obituario: true, sector_id: 3)
Person.create(nombres: 'Andres', apellidos: 'Espinoza', fecha_nac: '1990-03-28', fecha_fallecimiento: '2002-01-01', obituario: true, sector_id: 7)
Person.create(nombres: 'Vania', apellidos: 'Gallegos', fecha_nac: '1990-01-31', fecha_fallecimiento: '2012-12-12', obituario: true, sector_id: 10)
Person.create(nombres: 'Jesus', apellidos: 'Fujimori', fecha_nac: '1990-10-02', fecha_fallecimiento: '2006-06-06', obituario: true, sector_id: 5)
Person.create(nombres: 'Miguel', apellidos: 'Ochoa', fecha_nac: '1990-02-13', fecha_fallecimiento: '2010-11-11', obituario: true, sector_id: 7)
Person.create(nombres: 'Toribio', apellidos: 'Gomez', fecha_nac: '1990-12-11', fecha_fallecimiento: '2010-06-21', obituario: true, sector_id: 5)
Person.create(nombres: 'Javier', apellidos: 'Hernandez', fecha_nac: '1990-12-19', fecha_fallecimiento: '2010-12-25', obituario: true, sector_id: 4)
Person.create(nombres: 'Jessenia', apellidos: 'Mitacc', fecha_nac: '1990-11-25', fecha_fallecimiento: '2012-01-30', obituario: true, sector_id: 8)
Person.create(nombres: 'Ximena', apellidos: 'De la Cruz', fecha_nac: '1990-12-03', fecha_fallecimiento: '2011-05-09', obituario: true, sector_id: 6)
Person.create(nombres: 'Sandra', apellidos: 'Soto', fecha_nac: '1990-01-08', fecha_fallecimiento: '2011-05-15', obituario: true, sector_id: 3)
Person.create(nombres: 'Veronica', apellidos: 'Quintanilla', fecha_nac: '1990-05-05', fecha_fallecimiento: '2010-02-01', obituario: true, sector_id: 4)
Person.create(nombres: 'Manuel', apellidos: 'Huarcaya', fecha_nac: '1990-05-19', fecha_fallecimiento: '2002-04-01', obituario: true, sector_id: 5)
Person.create(nombres: 'Valentina', apellidos: 'Salhuana', fecha_nac: '1990-12-14', fecha_fallecimiento: '2005-06-01', obituario: true, sector_id: 10)
Person.create(nombres: 'Fiorella', apellidos: 'Chavez', fecha_nac: '1990-12-31', fecha_fallecimiento: '2012-08-11', obituario: true, sector_id: 9)
Person.create(nombres: 'Leslie', apellidos: 'Chuquin', fecha_nac: '1990-05-30', fecha_fallecimiento: '2011-12-01', obituario: true, sector_id: 1)
