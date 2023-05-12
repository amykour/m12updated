//
//  ViewController.swift
//  M12Updated
//
//  Created by Алена on 12.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Views
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Image.star
        imageView.tintColor = Constants.Colors.dustBlue
        imageView.tintColor = traitCollection.userInterfaceStyle == .dark ? Constants.Colors.dustBlue : Constants.Colors.yellowUmber
        return imageView
    }()
    
    private lazy var label1: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.heading1
        label.textColor = Constants.Colors.dustBlue
        label.font = Constants.Fonts.ui30Medium
        return label
    }()
    
    private lazy var label2: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.heading2
        label.textColor = Constants.Colors.greenGrass
        label.font = Constants.Fonts.systemText
        return label
    }()
    
    private lazy var label3: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.heading3
        label.textColor = Constants.Colors.yellowUmber
        label.font = Constants.Fonts.ui14Regular
        return label
    }()
    
    private lazy var label4: UILabel = {
        let label = UILabel()
        let string = "Hello, world"
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: string)
        if let commaIndex = string.firstIndex(of: ",") {
            attributedString.addAttribute(.foregroundColor, value: UIColor.black, range: NSRange(string.startIndex ..< commaIndex, in: string))
            attributedString.addAttribute(.foregroundColor, value: UIColor.systemCyan, range: NSRange(commaIndex ..< string.endIndex, in: string))
        }
        label.attributedText = attributedString
        label.text = Constants.Text.heading4
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        return stackView
    }()
    
    //MARK: - Lifecycle
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateImageColor()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    //MARK: - Private
    
    private func updateImageColor() {
        if traitCollection.userInterfaceStyle == .dark {
            imageView.tintColor = Constants.Colors.dustBlue
        } else {
            imageView.tintColor = Constants.Colors.yellowUmber
        }
    }
    
    private func setupViews() {
        view.addSubview(stackView)
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
}


