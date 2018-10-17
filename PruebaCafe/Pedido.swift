//
//  Pedido.swift
//  PruebaCafe
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class Pedido {
    var nombre : String
    var complementos : String
    var imagenLista : UIImage
    
    init(nombre : String, complementos : String, imagenLista : UIImage){
        self.nombre = nombre
        self.complementos = complementos
        self.imagenLista = imagenLista
    }
}
