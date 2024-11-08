//
//  exampleViewController.swift
//  SuperSDK
//
//  Created by Oscar Aguilar on 08/11/24.
//

import UIKit
import Alamofire

public class exampleViewController: UIViewController {
    
    public static let storyboardVC = UIStoryboard(name: "Storyboard", bundle: Bundle.module).instantiateInitialViewController()!
    
    var pokemones: [Pokemon] = []
    
    @IBOutlet weak var pokemonsearchBar: UISearchBar!
    @IBOutlet weak var pokemonsTableView: UITableView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()

//        pokemonsTableView.register(UINib(nibName: "pokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "pokemonTableViewCell")
//        
//        pokemonsTableView.dataSource = self
//        pokemonsTableView.delegate = self
        getAllPokemons()
    }
    
    func getAllPokemons() {
        AF.request("https://pokeapi.co/api/v2/pokemon").responseDecodable(of: Pokemon.self) { (response) in
            debugPrint(response)
        }
    }
    

}
extension exampleViewController: UITableViewDataSource, UITableViewDelegate {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemones.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokemonsTableView.dequeueReusableCell(withIdentifier: "pokemonTableViewCell", for: indexPath) as! pokemonTableViewCell
        cell.selectionStyle = .none
        return cell
    }
    
    
}
