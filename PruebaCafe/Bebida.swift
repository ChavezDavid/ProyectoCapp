//
//  Bebidas.swift
//  PruebaCafe
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class Bebida {
    var nombre : String
    var imagenLista : UIImage
    var imagenDetalle : UIImage
    var descripcion: String
    var precio : Double
    var comentarios : [Comentario] = []
    var calificacion : Double
    
    init(nombre : String, imagenLista : UIImage, imagenDetalle : UIImage, descripcion: String, precio : Double, comentarios : [Comentario], calificacion : Double){
        self.nombre = nombre
        self.imagenLista = imagenLista
        self.imagenDetalle = imagenDetalle
        self.descripcion = descripcion
        self.precio = precio
        self.comentarios = comentarios
        self.calificacion = calificacion
    }
}
