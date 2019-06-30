import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: "QiitaTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "QiitaTableViewCell")
        tableView.rowHeight = 80
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QiitaTableViewCell", for: indexPath) as? QiitaTableViewCell else {
            return UITableViewCell()
        }
        cell.set(title: "タイトル\(indexPath.row)", author: "作成者")
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)番目のセルをタップ")
    }
}
