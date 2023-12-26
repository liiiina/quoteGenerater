//
//  ViewController.swift
//  myFirstPracticeApp
//
//  Created by 임현아 on 2023/12/25.
//

import UIKit

class ViewController: UIViewController {
    let quote = [
        Quote(content: "겉으로 보기에 무척 연약해 보이는 모든 것이 바로 힘이다.", name: "파스칼"),
        Quote(content: "확실한 일을 실행할 힘은 누구나 가지고 있다.", name: "괴테"),
        Quote(content: "끝을 맺기를 처음과 같이 하면 실패가 없다.", name: "노자"),
        Quote(content: "승자는 문제 속에 뛰어든다. 패자는 문제의 변두리에서만 맴돈다.", name: "빅토리 위고"),
        Quote(content: "오늘 죽을 것 처럼 행동하고 영원히 살 것처럼 배워라", name: "간디"),
        Quote(content: "모르는 것보다는 사실과 다르게 알고 있는 것이 더 문제다", name: "마크 트웨인")
    ]
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func generateButton(_ sender: UIButton) {
        let number = Int(arc4random_uniform(6))
        self.contentLabel.text = quote[number].content
        self.nameLabel.text = quote[number].name
    }
}

