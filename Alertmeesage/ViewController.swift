import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelfirst: UILabel!
    @IBOutlet weak var userTextfield: UITextField!
    @IBOutlet weak var paswordTextfeild: UITextField!
    @IBOutlet weak var paswordtext: UITextField!
    @IBOutlet weak var buttonsingupconfig: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsingupconfig.setTitle("Sing UP", for: .normal)
        labelfirst.text = "SingUp"
       
    }
    @IBAction func buttonsingup(_ sender: Any) {
        
        if paswordtext.text == paswordTextfeild.text{
//            let alert = UIAlertController(title: "Harika", message: "Kayıt başarılı bir şekilde oluşturuldu.", preferredStyle: UIAlertController.Style.alert)
//            let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
//                print("Button Clicked")
//            }
//            alert.addAction(okbutton)
//            self.present(alert, animated: true, completion: nil)
            sendMassage(message: "Hoşgeldinz", msg2: "Kayıt Başarılı.")
           
        }
      else{
           // let alertsecond = UIAlertController(title: "Erorr", message: "Kayıt işlemi gerçekleştirilemedir.", preferredStyle: UIAlertController.Style.alert)
            //self.present(alertsecond, animated: true, completion: nil)
            sendMassage(message: "Erorr", msg2: "İşlen gerçekleştirilimedi.")
          
      
        }
    }
        func sendMassage(message : String , msg2 : String){
             let alert = UIAlertController(title: message, message: msg2, preferredStyle: UIAlertController.Style.alert)
                let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                    print("Button Clicked")
                }
                alert.addAction(okbutton)
                self.present(alert, animated: true, completion: nil)
            userTextfield.text = ""
            print("TEST")
            paswordtext.text = ""
            paswordTextfeild.text = ""
        }

 }
    

