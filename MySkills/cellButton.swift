import UIKit

class CustomButtonCollectionViewCell: UICollectionViewCell {
    
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("", for: .normal)
        button.tintColor = .black
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
 

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubviews()
    }

    private func setupSubviews() {
        contentView.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
    
        contentView.layer.cornerRadius = 12
        contentView.backgroundColor = UIColor(red: 0.953, green: 0.953, blue: 0.961, alpha: 1)
        
        
    }
   

    @objc func buttonTapped() {
        //просто тест, не хватило времени ребят
        
        if button.tintColor == .black {
            button.tintColor = .red
        }else{
            button.tintColor = .black 
        }

    }
    

    
}

