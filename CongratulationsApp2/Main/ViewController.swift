//
//  ViewController.swift
//  CongratulationsApp2
//
//  Created by imac on 2.03.24.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    

    private let header = UILabel()
    private let maintext = UILabel()
    
    private let firstButton = UIButton()
    private let secondButton = UIButton()
    
    private let secondView = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()
        
    }


}

private extension ViewController {
    func embedViews() {
        [
            header,
            maintext,
            firstButton,
            secondButton
        ].forEach {view.addSubview($0) }
    }
}

private extension ViewController {
    func setupLayout() {
        
        
        view.addSubview(secondView)
        secondView.snp.makeConstraints{
            $0.width.equalTo(400)
            $0.height.equalTo(450)
            $0.center.equalToSuperview()
        }
        header.snp.makeConstraints{
            $0.top.equalTo(view.snp.topMargin).offset(220)
            $0.centerX.equalToSuperview()
        }
        
        maintext.snp.makeConstraints{
            $0.top.equalTo(header.snp.bottomMargin).offset(40)
            $0.leading.equalTo(view.snp.leadingMargin).offset(5)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(5)
        }
        firstButton.snp.makeConstraints {
            $0.top.equalTo(maintext.snp.bottom).offset(40)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(350)
            $0.height.equalTo(50)
        }
        secondButton.snp.makeConstraints {
            $0.top.equalTo(firstButton.snp.bottomMargin).offset(15)
            $0.centerX.equalToSuperview()
        }
        secondView.addSubview(header)
        secondView.addSubview(maintext)
        secondView.addSubview(firstButton)
        secondView.addSubview(secondButton)
    }
}

private extension ViewController {
    func setupAppearance() {
        view.backgroundColor = UIColor(red: 92/255, green: 176/255, blue: 117/255, alpha: 1)
        
        
        header.textColor = .label
        header.font = UIFont.systemFont(ofSize: 40)
        
        maintext.textColor = .secondaryLabel
        maintext.font = UIFont.systemFont(ofSize: 20)
        maintext.numberOfLines = 8
        maintext.textAlignment = .center

        firstButton.setTitleColor(.white, for: .normal)
        firstButton.backgroundColor = UIColor(red: 92/255, green: 176/255, blue: 117/255, alpha: 1)
        firstButton.layer.cornerRadius = 25
        
        secondButton.setTitleColor(UIColor(red: 92/255, green: 176/255, blue: 117/255, alpha: 1), for: .normal)
        
        secondView.backgroundColor = .white
        secondView.layer.cornerRadius = 25
    }
}

private extension ViewController {
    func setupData() {
        header.text = "Congratulations!"
        maintext.text = "Захар, там написано очень много текста, но мне не хочется его переписывать. Он даже написан как будто на испанском или каком-то другом языке. Мне надо как-то наполнить этот текст, поэтому здесь нет никакого смысла, ты даже можешь не дочитывать."
        
        firstButton.setTitle("чай", for: .normal)

        secondButton.setTitle("кофе", for: .normal)
    }
}

private extension ViewController {
    func setupBehavior() {
        print("OK")
    }
}
