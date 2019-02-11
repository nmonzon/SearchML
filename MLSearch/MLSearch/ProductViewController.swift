import UIKit

class ProductViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    
    let token = "APP_USR-8179142163683780-020920-6f647ebeddcad8ef5c5c2c960613886e-170208449"
    let path = "https://api.mercadolibre.com/sites/MLU/search?q="
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        setupSearchBar()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        /*if let textIngresed = searchBar.text {
            //print(textIngresed)
            if textIngresed == ""{
                return
            }
            let jsonUrlString = "\(path)\(textIngresed)&\(token)"
            print("\(jsonUrlString)")
            
            guard let url = URL(string: jsonUrlString) else {
                return
            }
            
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
            }.resume()
            goToResultVC()
        }*/
    }
    
    func goToResultVC(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        self.present(newViewController, animated: true, completion: nil)

    }
    
    func setupSearchBar(){
        searchBar.barTintColor = UIColor.red
        searchBar.placeholder = "Busca un producto"
        searchBar.autocapitalizationType = .none
    }
    
}

