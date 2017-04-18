
//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    private var button: UIButton!

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Internal Methods
    
    // Viewの設定
    internal func setupView() {
        // ボタンの設定
        self.setupButton()
    }
    
    
    // ボタンの設定
    internal func setupButton() {
        // ボタンのサイズ
        let buttonSize = CGSize(width: 200.0, height: 50.0)
        
        // ボタンの座標
        let buttonPoint = CGPoint(x: self.view.frame.width / 2 - buttonSize.width / 2,
                                  y: self.view.frame.height / 2 - buttonSize.height / 2)
        
        
        button = UIButton(frame: CGRect(origin: buttonPoint, size: buttonSize))
        
        button.tag = 1
        button.backgroundColor = UIColor.red
        
        // 通常時タイトル設定
        button.setTitle("ボタン(通常)", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        // ハイライト時設定
        button.setTitle("ボタン(ハイライト時)", for: .highlighted)
        button.setTitleColor(.black, for: .highlighted)
        
        
        // 角丸設定
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20.0
        
        // イベント追加
        button.addTarget(self,
                         action: #selector(onButtonTapped(sender:)),
                         for: .touchUpInside)
        
        
        self.view.addSubview(button)
    }
    
    internal func onButtonTapped(sender: UIButton) {
        print(#function)
        print("sender.currentTitle: \(String(describing: sender.currentTitle))")
        print("sender.tag: \(sender.tag)")
    }

}

