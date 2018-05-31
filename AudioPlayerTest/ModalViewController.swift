//
//  ModalViewController.swift
//  AudioPlayerTest
//
//  Created by Adel Burekovic on 31/05/2018.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit
import KDEAudioPlayer

class ModalViewController: UIViewController {

    let player = AudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func playTapped(_ sender: Any) {
        guard let url = URL(string: "https://www.rmp-streaming.com/media/bbb-360p.mp4"),
        let audioItem = AudioItem(highQualitySoundURL: url, mediumQualitySoundURL: url, lowQualitySoundURL: url) else {
            return
        }

        player.play(item: audioItem)
    }

    @IBAction func closeTapped(_ sender: Any) {
        player.stop()
        dismiss(animated: true, completion: nil)
    }
}
