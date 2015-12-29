//
//  KanjiStrokeOrderView.swift
//  WaniKani
//
//  Created by Andriy K. on 12/29/15.
//  Copyright © 2015 Andriy K. All rights reserved.
//

import UIKit
import WaniKit

class KanjiMetaDataView: UIView {
  
  @IBOutlet weak var characterLabel: UILabel!
  @IBOutlet weak var meaningLabel: UILabel!
  
  func setupWithKanji(kanji: KanjiInfo?) {
    
    characterLabel?.text = kanji?.character
    meaningLabel?.text = kanji?.meaning
    
  }
  
}
