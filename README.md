# Interface Play Spotify
Interface play spotify para praticar o uso de anchors em swift


## Feature
- Para possibilitar multi linhas em um label precisa ser zero o número de linhas
- Para centralizar dois componentes no mesmo eixo precisa determinar altura de ambos
- Maneira correta de fazer e usar o centerYAnchor e no outro componente colocar a margim necessária



```swift
//
//  ViewController.swift
//  Interface Spotify
//
//  Created by kenjimaeda on 15/07/22.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
	}
	
	func setupViews() {
		let margin: CGFloat = 20
		let spacing: CGFloat = 32
		view.backgroundColor = UIColor.offBlack
		
		let offlineLabel = makeLabel("Offline", color: .white, 14)
		let switchStatus  = makeSwitch(false)
		let description = makeLabel("Wehen you go offline,you will only be abble to play,the music and podcastas you are dowlond", color: .gray, 12)
		let crossfadeLabel = makeLabel("Crossfade", color: .white, 20)
		let crossMin = makeLabel("0s", color: .gray, 12)
		let crossMax = makeLabel("12s", color: .gray, 12)
		let progress = makeProgress()
		let playBack = makeLabel("Gapples Playback", color: .white, 18)
		let unplayAble = makeLabel("Hide Unplayable Songs", color: .white, 18)
		let enableAudio = makeLabel("Enable Audio Normalization", color: .white, 18)
		let switchPlayBack  = makeSwitch(false)
		let switchUnplayable = makeSwitch(false)
		let switchAuidoPlay  = makeSwitch(false)
		
		view.addSubview(offlineLabel)
		view.addSubview(switchStatus)
		view.addSubview(description)
		view.addSubview(crossfadeLabel)
		view.addSubview(crossMin)
		view.addSubview(crossMax)
		view.addSubview(progress)
		view.addSubview(playBack)
		view.addSubview(unplayAble)
		view.addSubview(enableAudio)
		view.addSubview(switchUnplayable)
		view.addSubview(switchPlayBack)
		view.addSubview(switchAuidoPlay)
		
		NSLayoutConstraint.activate([
			
			offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: margin),
			offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant:margin),
			switchStatus.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor),
			switchStatus.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
			
			description.topAnchor.constraint(equalTo: switchStatus.bottomAnchor,constant: margin),
			description.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
			description.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
			
			crossfadeLabel.topAnchor.constraint(equalTo: description.bottomAnchor,constant: spacing),
			crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			
			
			crossMin.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor,constant: spacing),
			crossMin.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
			//preciso determinar no mesmo eixo y de um deles
			progress.centerYAnchor.constraint(equalTo: crossMin.centerYAnchor),
			progress.leadingAnchor.constraint(equalTo: crossMin.trailingAnchor,constant: 5),
			//nao esquece e - em trailing
			progress.trailingAnchor.constraint(equalTo: crossMax.leadingAnchor,constant: -5),
			crossMax.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor,constant: spacing),
			crossMax.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
			
			playBack.topAnchor.constraint(equalTo: progress.bottomAnchor,constant: spacing),
			playBack.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
			switchPlayBack.centerYAnchor.constraint(equalTo: playBack.centerYAnchor),
			switchPlayBack.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
			
			unplayAble.topAnchor.constraint(equalTo: playBack.bottomAnchor,constant: spacing),
			unplayAble.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
			switchUnplayable.centerYAnchor.constraint(equalTo: unplayAble.centerYAnchor),
			switchUnplayable.centerXAnchor.constraint(equalTo: switchPlayBack.centerXAnchor),
			
			enableAudio.topAnchor.constraint(equalTo: unplayAble.bottomAnchor,constant: spacing),
			enableAudio.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
			switchAuidoPlay.centerYAnchor.constraint(equalTo: enableAudio.centerYAnchor),
			switchAuidoPlay.centerXAnchor.constraint(equalTo: switchUnplayable.centerXAnchor),
			
			
		])
		
	}

}



```

##
## Scren Shoot
![screnn shot](https://github.com/kenjimaeda54/interface-spotify-Swift-IOS/blob/develop/Screen%20Shot%202022-07-15%20at%2017.43.39.png)
