//
//  Usuario.swift
//  PruebaCafe
//
//  Created by Alumno on 15/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class Usuario {
    var nombre : String
    var imagenUsuario : UIImage
    var telefono : String
    var correo : String
    var contraseña : String
    var tarjeta : String
    var vencimiento : String
    var clave : Int
    
    init(nombre : String, imagenUsuario : UIImage, telefono : String, correo : String, contraseña : String, tarjeta : String, vencimiento : String, clave : Int) {
        self.nombre = nombre
        self.imagenUsuario = imagenUsuario
        self.telefono = telefono
        self.correo = correo
        self.contraseña = contraseña
        self.tarjeta = tarjeta
        self.vencimiento = vencimiento
        self.clave = clave
    }
}
