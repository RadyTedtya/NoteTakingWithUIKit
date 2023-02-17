//
//  ViewController.swift
//  NoteTakingWithUIKit
//
//  Created by Tedtya rady on 11/2/2023.
//

enum NoteType: String, CaseIterable, Identifiable {
    case allNotes = "All Notes"
    case reminderNote = "Reminder"
    case audioNote = "Audio"
    case imageNote = "Image"
    
    var id: Self {
        return self
    }
    
}

import UIKit

class CollectionViewController: UIViewController {
    
    var selectedNoteType: NoteType = .allNotes
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
    let scrollView: UIScrollView = .init()
    
    
    private lazy var _collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _collectionView.setCollectionViewLayout(layout, animated: true)
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        _collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        view.addSubview(_collectionView)
        NSLayoutConstraint.activate([
            _collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            _collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            _collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            _collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    
}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NoteType.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .primaryBackgroundColor
        cell.cellNameLabel.text = NoteType.allCases[indexPath.item].rawValue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedNoteType = NoteType.allCases[indexPath.item]
        print(selectedNoteType.rawValue)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width:90, height: 35)
//    }
    
    
    
    
}

