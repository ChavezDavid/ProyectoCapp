//
//  PedidoController.swift
//  PruebaCafe
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class PedidoController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvPedido: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DatosPedidos.pedidos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellPedido") as! CeldaPedidoController
        celda.lblProducto.text = DatosPedidos.pedidos[indexPath.row].nombre
        celda.lblComplementos.text = DatosPedidos.pedidos[indexPath.row].complementos
        celda.imgImagenProducto.image = DatosPedidos.pedidos[indexPath.row].imagenLista
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.reloadInputViews()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    @IBAction func doTapActualizar(_ sender: Any) {
        tvPedido.reloadData()
    }
}
