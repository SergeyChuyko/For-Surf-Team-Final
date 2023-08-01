import UIKit

class ViewController: UIViewController {
    
    let viewGray: UIView = {
        var view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 375, height: 387)
        view.layer.backgroundColor = UIColor(red: 0.953, green: 0.953, blue: 0.961, alpha: 1).cgColor
        
        return view
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        if let image = UIImage(named: "Me") {
            imageView.image = image
        }
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 60
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let labelName: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 149, height: 64)
        label.textColor = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.12
        label.textAlignment = .center
        label.attributedText = NSMutableAttributedString(string: "Чуйко Сергей\n   Андреевич", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelDescription: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 273, height: 20)
        label.textColor = UIColor(red: 0.588, green: 0.584, blue: 0.608, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.2
        label.numberOfLines = 2
        
        label.attributedText = NSMutableAttributedString(string: "iOS-разработчик, опыт 1 год", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelLoctaion: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 273, height: 20)
        label.textColor = UIColor(red: 0.588, green: 0.584, blue: 0.608, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.2
        label.attributedText = NSMutableAttributedString(string: "Новосибирск", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let someLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 20) // Можете установить нужные размеры
        label.textColor = UIColor(red: 0.588, green: 0.584, blue: 0.608, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()

        paragraphStyle.lineHeightMultiple = 1.2
        label.attributedText = NSMutableAttributedString(string: "0", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        
            
        return label
        
    }()
    
    
    let mySkillsLabel: UILabel = {
        let newLabel = UILabel()
        newLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 20)
        newLabel.textColor = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        newLabel.font = UIFont(name: "SFProDisplay-Medium", size: 16)
       
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.05
        newLabel.attributedText = NSMutableAttributedString(string: "Мои навыки", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        newLabel.translatesAutoresizingMaskIntoConstraints = false
        return newLabel
    }()
    
    
    let customView: UIView = {
        let customView = UIView()
        customView.frame = CGRect(x: 0, y: 0, width: 343, height: 68)
        //customView.backgroundColor = .systemBlue
        customView.translatesAutoresizingMaskIntoConstraints = false
        return customView
    }()
    
    let labelAbouYourSelf: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 50, height: 20)
        label.textColor = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.05
        label.attributedText = NSMutableAttributedString(string: "О себе", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.2
        label.attributedText = NSMutableAttributedString(string: "Experienced software engineer skilled in developing scalable and maintainable systems", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        // Добавьте делегата и источник данных для коллекции
        
        return collectionView
    }()

    
    
    var skillsArray : [String] = []
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Профиль"
        
        addSubviews()
        constraints()
        setupNavigationBar()

        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCollectionViewCell")
                collectionView.dataSource = self
                collectionView.delegate = self
        skillsArray = ["Room","DataSourse","ООП and SOLID","MVVM","custom view","Room","DataSourse","ООП and SOLID","MVVM","custom view"]
        
        collectionView.register(CustomButtonCollectionViewCell.self, forCellWithReuseIdentifier: "CustomButtonCollectionViewCell")
        
    }
    
    func setupNavigationBar() {
           let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
           
           navigationItem.rightBarButtonItem = addButton
       }
    
    func textWidth(text: String, font: UIFont) -> CGFloat {
            let maxSize = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
            let options: NSStringDrawingOptions = [.usesLineFragmentOrigin, .usesFontLeading]
            let attributes = [NSAttributedString.Key.font: font]
            let boundingRect = NSString(string: text).boundingRect(with: maxSize, options: options, attributes: attributes, context: nil)
            return ceil(boundingRect.width)
        }
    


    
    
    func addSubviews() {
        view.addSubview(viewGray)
        view.addSubview(imageView)
        view.addSubview(labelName)
        view.addSubview(labelDescription)
        view.addSubview(labelLoctaion)
        view.addSubview(someLabel)
        view.addSubview(mySkillsLabel)
        view.addSubview(customView)
        view.addSubview(labelAbouYourSelf)
        view.addSubview(secondLabel)
        view.addSubview(collectionView)
    }
    
    func constraints() {
        viewGray.translatesAutoresizingMaskIntoConstraints = false
        viewGray.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewGray.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        viewGray.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        imageView.topAnchor.constraint(equalTo: viewGray.topAnchor, constant: 124).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true

        labelName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16).isActive = true
        labelName.centerXAnchor.constraint(equalTo: viewGray.centerXAnchor).isActive = true

        labelDescription.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 4).isActive = true
        labelDescription.centerXAnchor.constraint(equalTo: viewGray.centerXAnchor).isActive = true

        labelLoctaion.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 0).isActive = true
        labelLoctaion.centerXAnchor.constraint(equalTo: viewGray.centerXAnchor).isActive = true

        someLabel.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 0).isActive = true
        someLabel.trailingAnchor.constraint(equalTo: labelLoctaion.leadingAnchor, constant: 0).isActive = true

        mySkillsLabel.topAnchor.constraint(equalTo: viewGray.bottomAnchor, constant: 20).isActive = true
        mySkillsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        mySkillsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -48).isActive = true
        mySkillsLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -384).isActive = true
        mySkillsLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        customView.widthAnchor.constraint(equalToConstant: 343).isActive = true
        customView.heightAnchor.constraint(equalToConstant: 68).isActive = true
        customView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16).isActive = true
        customView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16).isActive = true
        customView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -58).isActive = true
        
        labelAbouYourSelf.widthAnchor.constraint(equalToConstant: 75).isActive = true
        labelAbouYourSelf.heightAnchor.constraint(equalToConstant: 20).isActive = true
        labelAbouYourSelf.leftAnchor.constraint(equalTo: customView.leftAnchor,constant: 0).isActive = true
        labelAbouYourSelf.topAnchor.constraint(equalTo: customView.topAnchor,constant: 0).isActive = true
        
        secondLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 0).isActive = true
        secondLabel.topAnchor.constraint(equalTo: labelAbouYourSelf.bottomAnchor, constant: 0).isActive = true
        secondLabel.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: 0).isActive = true
        secondLabel.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: 0).isActive = true
        
        collectionView.topAnchor.constraint(equalTo: mySkillsLabel.bottomAnchor,constant: 16).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: customView.topAnchor,constant: -24).isActive = true
        
        

    }
    
}






extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return skillsArray.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == skillsArray.count {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomButtonCollectionViewCell", for: indexPath) as! CustomButtonCollectionViewCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
            cell.label.text = skillsArray[indexPath.item]
            cell.label.numberOfLines = 0
            return cell
        }
        
    }

    
    


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellInset: CGFloat = 24

        if indexPath.item == skillsArray.count {
            return CGSize(width: collectionView.bounds.width - 2 * cellInset, height: 60)
        } else {
            let text = skillsArray[indexPath.item]
            let font = UIFont.systemFont(ofSize: 16)
            let textWidth = textWidth(text: text, font: font)
            let cellWidth = textWidth + 2 * cellInset
            let cellHeight: CGFloat = 44
            return CGSize(width: cellWidth, height: cellHeight)
        }
    }



  
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 12
      }

      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
          return 12
      }
}



extension ViewController {

    @objc func addButtonTapped() {
        // Создаем алерт с текстовым полем
        let alertController = UIAlertController(title: "Добавление навыка", message: "Введите название навыка которым вы владеете", preferredStyle: .alert)
        alertController.addTextField(configurationHandler: { textField in
            textField.placeholder = "Введите название"
        })

        let addAction = UIAlertAction(title: "Добавить", style: .default, handler: { [weak self] _ in
            guard let textField = alertController.textFields?.first,
                  let name = textField.text,
                  !name.isEmpty else {
                return
            }

            self?.addNewSkill(name: name)
        })

        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)

        alertController.addAction(addAction)
        alertController.addAction(cancelAction)

        present(alertController, animated: true, completion: nil)
    }

    func addNewSkill(name: String) {
        skillsArray.append(name)
        collectionView.reloadData()
    }

}





