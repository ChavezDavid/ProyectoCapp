//
//  MenuController.swift
//  PruebaCafe
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class MenuController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBAction func doChangeStatusMenu(_ sender: Any) {
        tvMenu.reloadData()
    }
    @IBOutlet weak var tvMenu: UITableView!
    @IBOutlet weak var scMenu: UISegmentedControl!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if scMenu.selectedSegmentIndex == 0{
            return DatosBebidas.bebidas.count
        } else {
            return DatosPostres.postres.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if scMenu.selectedSegmentIndex == 0 {
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellBebida") as! CeldaBebidaController
            celda.lblNombreBebida.text = DatosBebidas.bebidas[indexPath.row].nombre
            celda.imgBebida.image = DatosBebidas.bebidas[indexPath.row].imagenLista
            return celda
        } else {
            let celda = tableView.dequeueReusableCell(withIdentifier: "cellPostre") as! CeldaPostreController
            celda.lblNombrePostre.text = DatosPostres.postres[indexPath.row].nombre
            celda.imgPostre.image = DatosPostres.postres[indexPath.row].imagenLista
            return celda
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPostreDetalle" {
            let destino = segue.destination as! DetalleProductoController
            destino.postre = DatosPostres.postres[(tvMenu.indexPathForSelectedRow?.row)!]
        } else if segue.identifier == "goToBebidaDetalle" {
            let destino = segue.destination as! DetalleProductoController
            destino.bebida = DatosBebidas.bebidas[(tvMenu.indexPathForSelectedRow?.row)!]
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
}
