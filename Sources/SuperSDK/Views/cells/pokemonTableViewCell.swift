//
//  pokemonTableViewCell.swift
//  SuperSDK
//
//  Created by Oscar Aguilar on 08/11/24.
//

import UIKit

public class pokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonimage: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}