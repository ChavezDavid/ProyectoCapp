//
//  DatosPostres.swift
//  PruebaCafe
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DatosPostres {
    static var postres : [Postre] = [
        Postre(nombre: "Bollito", imagenLista: UIImage(named: "bollitoLista")!, imagenDetalle: UIImage(named: "bollitoDetalle")!, descripcion: "Bollito simple", precio: 20.0, comentarios: [Comentario(usuario: "David", comentario: "Simple y delicioso", calificacion: 3.0)], calificacion: 4.5)
    ]
}
