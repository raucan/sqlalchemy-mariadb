import sqlalchemy
from sqlalchemy.ext.declarative import declarative_base

engine = sqlalchemy.create_engine("mariadb+mariadbconnector://root:root@127.0.0.1:3306/diccionario")
Base = declarative_base()

class Diccionario(Base):
    __tablename__ = 'diccionario'
    id = sqlalchemy.Column(sqlalchemy.Integer, primary_key=True)
    palabra = sqlalchemy.Column(sqlalchemy.String(length=100))
    significado = sqlalchemy.Column(sqlalchemy.String(length=300))

Base.metadata.create_all(engine)

Session = sqlalchemy.orm.sessionmaker()
Session.configure(bind=engine)
session = Session()

def principal():
    Diccionario()
    menu = """
1) Agregar nueva palabra
2) Editar palabra existente
3) Eliminar palabra existente
4) Ver palabras
5) Buscar palabra
6) Salir
Elige: """
    eleccion = ""
    while eleccion != "6":
        eleccion = input(menu)
        if eleccion == "1":
            palabra = input("Ingresa la palabra: ")
            # Comprobar si no existe
            posible_significado = buscar_significado_palabra(palabra)
            if posible_significado:
                print(f"La palabra '{palabra}' ya existe")
            else:
                significado = input("Ingresa el significado: ")
                agregar_palabra(palabra, significado)
                print("Palabra agregada")
        if eleccion == "2":
            palabra = input("Ingresa la palabra que quieres editar: ")
            nuevo_significado = input("Ingresa el nuevo significado: ")
            editar_palabra(palabra, nuevo_significado)
            print("Palabra actualizada")
        if eleccion == "3":
            palabra = input("Ingresa la palabra a eliminar: ")
            eliminar_palabra(palabra)
        if eleccion == "4":
            print("=== Lista de palabras ===")
            palabras = obtener_palabras()

        if eleccion == "5":
            palabra = input(
                "Ingresa la palabra de la cual quieres saber el significado: ")
            significado = buscar_significado_palabra(palabra)




def agregar_palabra(palabra, significado):
    nuevaPalabra = Diccionario(palabra=palabra, significado =significado)
    session.add(nuevaPalabra)
    session.commit()

def editar_palabra(palabra, nuevo_significado):
    palabra = session.query(Diccionario).get(palabra)
    Diccionario.significado = nuevo_significado
    session.commit()

def eliminar_palabra(palabra):
    session.query(Diccionario).filter(Diccionario.palabra == palabra).delete()
    session.commit()

def obtener_palabras():
    palabras = session.query(Diccionario).all()
    for palabra in palabras:
        print(palabra.palabra )

def buscar_significado_palabra(palabra):
    palabras = session.query(Diccionario).filter_by(palabra=palabra)
    for palabra in palabras:
        print(palabra.palabra + ': ' + palabra.significado)

if __name__ == '__main__':
    principal()

