import UIKit

class QiitaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    func set(title: String, author: String) {
        iconImageView.backgroundColor = .red
        titleLabel.text = title
        authorLabel.text = author
    }
}
