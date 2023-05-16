import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var superHerosName = [String]()
    var superHerosImage = [String]()
    var superHerosLife = [String]()
    
    var detailsHeroName = ""
    var detailsHeroImage = ""
    var detailsHeroLife = ""

    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        superHerosName.append("Kromatik Titan")
        superHerosName.append("Zihin Saldırısı")
        superHerosName.append("Işık Kılıcı")
        superHerosName.append("Kozmik Güç")
        superHerosName.append("Gizli Kalkan")
        superHerosName.append("Atomik Kuvvet")
        superHerosName.append("Karanlık Okçu")
        superHerosName.append("Alev Kalp")
        superHerosName.append("Kristal Şövalye")
        superHerosName.append("Gölge Dövüşçüsü")
        superHerosName.append("Su Altı Güçlüsü")
        superHerosName.append("Rüzgar Koşucusu")
        superHerosName.append("Kıyamet Kızıl Ejderi")
        superHerosName.append("Süpernova")
        superHerosName.append("Manyetik Adam")
        superHerosName.append("Plazma Kalkanı")
        superHerosName.append("Ayırt Edici")
        superHerosName.append("Telepatik Savunucu")
        superHerosName.append("Gezegen Gezginleri")
        superHerosName.append("Zaman Savaşçısı")
        superHerosName.append("Yıldız Fırtınası")
        superHerosName.append("Hızlı Gözcü")

        superHerosImage.append("1")
        superHerosImage.append("2")
        superHerosImage.append("3")
        superHerosImage.append("4")
        superHerosImage.append("5")
        superHerosImage.append("6")
        superHerosImage.append("7")
        superHerosImage.append("8")
        superHerosImage.append("9")
        superHerosImage.append("10")
        superHerosImage.append("11")
        superHerosImage.append("12")
        superHerosImage.append("13")
        superHerosImage.append("14")
        superHerosImage.append("15")
        superHerosImage.append("16")
        superHerosImage.append("17")
        superHerosImage.append("18")
        superHerosImage.append("19")
        superHerosImage.append("20")
        superHerosImage.append("21")
        superHerosImage.append("22")
        
        superHerosLife.append("Dahiyane bir milyarder olan Tony Stark, özel bir zırh kostümüyle donanmıştır ve teknoloji ve zeka sayesinde dünyayı korur.")
        superHerosLife.append("Krypton gezegeninden gelen Clark Kent, Dünya'da Superman olarak tanınır. Güçlü, uçabilen ve lazer gözlere sahip olan bu kahraman, adaleti sağlamak için çabalar.")
        superHerosLife.append("Yüksek okul öğrencisi Peter Parker, bir örümcek tarafından ısırıldıktan sonra özel yeteneklere sahip olur. Örümcek adam olarak bilinen Parker, güçlü bir ağ atma yeteneğine ve duvarları tırmanma yeteneğine sahiptir.")
        superHerosLife.append("Anne ve babasının ölümünden sonra suçla savaşmaya karar veren Bruce Wayne, Gotham City'de Batman olarak bilinir. Zenginlik, eğitim ve zekasıyla düşmanlarına karşı mücadele eder.")
        superHerosLife.append("Amazon prensesi Diana Prince, Tanrılar tarafından yaratılan bir kahramandır. Süper güçlere sahip olan Wonder Woman, cesur ve adaletli bir savaşçıdır.")
        superHerosLife.append("II. Dünya Savaşı sırasında süper asker serumu ile güçlendirilen Steve Rogers, Amerika'nın sembolü haline gelir. Süper güçleri ve zırhıyla kötülüğe karşı savaşır.")
        superHerosLife.append("Adamantium isimli dayanıklı bir metal iskeleti ve pençeleri olan Wolverine, X-Men ekibinin bir üyesidir. Hızlı iyileşme yeteneği ve ölümsüz yapısıyla tanınır.")
        superHerosLife.append("Asgardlı tanrı Thor, güçlü bir çekiç olan Mjolnir'i kullanarak elektrik ve fırtına kontrolü yapabilir. Dünyaya düşen Thor, insanlarla birlikte savaşır ve kaderiyle ilgili görevleri yerine getirir.")
        superHerosLife.append("Rus ajan Natasha Romanoff, mükemmel bir dövüşçü ve casus olarak bilinir. Yetenekleri ve zekası sayesinde kötülükle mücadele eder.")
        superHerosLife.append("Radyasyona maruz kalan bilim insanı Bruce Banner, sinirlendiğinde devasa bir yeşil canavara dönüşen Hulk'a dönüşür. Gücü ve dayanıklılığı ile bilinir.")
        superHerosLife.append("Güçlü bir enerjiye sahip olan Carol Danvers, Captain Marvel olarak bilinir. Uzaylı teknolojisiyle donatılan bu kahraman, evrenin koruyucusu olarak görev yapar.")
        superHerosLife.append("Krypton gezegeninde doğan Kal-El, Dünya'ya kaçırılır ve burada süper güçlere sahip olur. İnsanları korumak için çabalar.")
        superHerosLife.append("Ebeveynleri öldürülen Bruce Wayne, Gotham City'yi suçlulardan temizlemek için mücadele eder. Kendine özgü ekipmanları ve zekası ile tanınır.")
        superHerosLife.append("Genç Peter Parker, bir örümcek tarafından ısırıldıktan sonra özel güçlere sahip olur. New York'ta suçlularla savaşırken, güçlerinin sorumluluğunu öğrenir.")
        superHerosLife.append("Zengin iş adamı Tony Stark, kendisini bir suikast girişiminden kurtarmak için yarattığı teknolojik zırhı ile dünyayı korumaya çalışır.")
        superHerosLife.append("II. Dünya Savaşı sırasında, zayıf ama cesur Steve Rogers, askeri bir deneye katılır ve süper güçlere sahip olur. Amerikan değerleri ve özgürlüklerine inanır.")
        superHerosLife.append("Amazon prensesi Diana, insan dünyasında kötülükle savaşır. Gücü, dayanıklılığı ve cesareti sayesinde dünya barışını sağlamak için mücadele eder.")
        superHerosLife.append("Uzay polisi olan Hal Jordan, gücünü bir güç halkası kullanarak alır. Bu halka, hayal gücünün sınırlarını aşan birçok özellik barındırır.")
        superHerosLife.append("X-Men'in üyesi olan Logan, adamantium isimli bir metal kaplamalı kemiklere ve özel bir iyileştirme faktörü")
        superHerosLife.append("Uzay polisi olan Hal Jordan, gücünü bir güç halkası kullanarak alır. Bu halka, hayal gücünün sınırlarını aşan birçok özellik barındırır.")
        superHerosLife.append("Dr. Stephen Strange, tıbbi bir kariyeri olan cerrahdır, ancak bir kaza sonrası elini kaybeder. Ardından mistik bir dünyaya girer ve büyü güçlerini öğrenir.")
        superHerosLife.append("KGB'de eğitim görmüş, bir casus olan Natasha Romanoff, suçlularla savaşmak için becerilerini kullanır.")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHerosName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHerosName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle : UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superHerosName.remove(at: indexPath.row)
            superHerosImage.remove(at: indexPath.row)
            superHerosLife.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        detailsHeroName = superHerosName[indexPath.row]
        detailsHeroImage = superHerosImage[indexPath.row]
        detailsHeroLife = superHerosLife[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController

            destinationVC.heroName = detailsHeroName
            destinationVC.heroImage = detailsHeroImage
            destinationVC.heroLife = detailsHeroLife
            
        }
    }

}

