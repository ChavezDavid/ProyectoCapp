//
//  DetalleProductoController.swift
//  PruebaCafe
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DetalleProductoController : UIViewController {
    var bebida : Bebida?
    var postre : Postre?
    
    
    @IBOutlet weak var imgProducto: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblCalificacion: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if bebida != nil{
            if segue.identifier == "goToCalificar" {
                let destino = segue.destination as! CalificarController
                destino.title = bebida?.nombre
            } else if segue.identifier == "goToComentarios" {
                let destino = segue.destination as! ComentariosController
                destino.comentarios = bebida?.comentarios
            } else if segue.identifier == "goToAgregar" {
                let destino = segue.destination as! AgregarController
                destino.title = bebida?.nombre
            }
        } else if postre != nil {
            if segue.identifier == "goToCalificar" {
                let destino = segue.destination  as! CalificarController
                destino.title = postre?.nombre
            } else if segue.identifier == "goToComentarios" {
                let destino = segue.destination as! ComentariosController
                destino.comentarios = postre?.comentarios
            } else if segue.identifier == "goToAgregar" {
                let destino = segue.destination as! AgregarController
                destino.title = postre?.nombre
            }
        }
    }
    
    override func viewDidLoad() {
        if let bebidaActual = bebida {
            self.title = bebidaActual.nombre
            imgProducto.image = bebidaActual.imagenDetalle
            lblDescripcion.text = bebidaActual.descripcion
            lblPrecio.text = "\(bebidaActual.precio)"
            lblCalificacion.text = "\(bebidaActual.calificacion)"
        } else if let postreActual = postre {
            self.title = postreActual.nombre
            imgProducto.image = postreActual.imagenDetalle
            lblDescripcion.text = postreActual.descripcion
            lblPrecio.text = "\(postreActual.precio)"
            lblCalificacion.text = "\(postreActual.calificacion)"
        }
    }
}
