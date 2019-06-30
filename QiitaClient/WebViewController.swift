import UIKit
import WebKit

class WebViewController: UIViewController {
    private let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.frame = view.frame
        view.addSubview(webView)
        
        let url = URL(string: "https://www.google.com")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
}
