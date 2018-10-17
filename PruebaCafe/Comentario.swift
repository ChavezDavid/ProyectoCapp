//
//  Comentario.swift
//  PruebaCafe
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class Comentario {
    var usuario : String
    var comentario : String
    var calificacion : Double
    
    init(usuario : String, comentario : String, calificacion : Double){
        self.usuario = usuario
        self.comentario = comentario
        self.calificacion = calificacion
    }
}
