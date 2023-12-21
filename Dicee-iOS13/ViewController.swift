import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        // #imageLiteral() yazınca resim işareti çıktıktan sonra seçebiliyoruz.
        //diceImageView1.alpha = 0.5
        //alpha ile imageView'ın saydamlığını ayarlaryorum opak=1 ve saydam=0
        //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
    // roll butonuna tıklandığında çalışır.
        
        //diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        //diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = diceArray.randomElement()
        //diceArray.randomElement() = dizi içindeki elemanı rastgele bir şekilde seçer
        //diceArray.shuffle() dizideki ögeler dizideki konumlarını rastgele değiştirir
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        //diceArray[Int.random(in: 0...5)] = 0 ile 5 de dahil olmak üzere rasgele bir sayı seçer
        
        // Int.random(in: 0...5 0 ile 5 arasında rastgele bir sayı üretiyor.
        //Int.random(in: 0 ..< 5 0 ile 5 arasında rastgele bir sayı üretir ama 5 dahil değil.
    }
    
}

