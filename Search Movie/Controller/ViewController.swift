//
//  ViewController.swift
//  Search Movie
//
//  Created by Amit Sarker on 10/30/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var movieInfoCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DataLoader.shared.loadData()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        initialLoading()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    deinit {
        print("ViewController Deinit Called")
    }
}

//MARK: Loading CollectionView
extension ViewController {
    func initialLoading(){
        searchBar.delegate = self
        
        movieInfoCollectionView.register(MovieListCollectionViewCell.nib(), forCellWithReuseIdentifier: Constant.cell )
        movieInfoCollectionView.delegate = self
        movieInfoCollectionView.dataSource = self
        updateCollectionViewLayout()
    }
    
    func updateCollectionViewLayout(){
        movieInfoCollectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        if let layout = movieInfoCollectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.minimumInteritemSpacing = UIDevice.current.userInterfaceIdiom == .phone ? 10 : 15
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/10)
        }
        movieInfoCollectionView.reloadData()
    }
}


//MARK: CollectionView Delegate and DataSource
extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("Count ",DataLoader.shared.movies.count)
        return DataLoader.shared.movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =
          collectionView.dequeueReusableCell(
            withReuseIdentifier: Constant.cell,
            for: indexPath) as? MovieListCollectionViewCell
        else {
          fatalError("Unable to dequeue CollectionViewCell")
        }
        let image = DataLoader.shared.movies [ indexPath.row ].movieIcon
        let movieTitle = DataLoader.shared.movies [ indexPath.row ].movieTitle
        let movieDesscription = DataLoader.shared.movies [ indexPath.row ].movieDescription
        cell.configure(image: image, movieTitle: movieTitle, movieDesscription: movieDesscription)
        return cell
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout {
        
    //Collection View cell size coming from the text of the description
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var height : CGFloat = 0
        let lebel = UILabel()
            
        lebel.text = DataLoader.shared.movies [ indexPath.row ].movieDescription
            
        lebel.font = UIFont.systemFont(ofSize: 17)
        lebel.sizeToFit()
        height = lebel.frame.width
        height = height / ( UIScreen.main.bounds.width * 0.8) + 3
        return CGSize(width: UIScreen.main.bounds.width , height: height * 18 )
    }
}

//MARK: Search Part -> Implement latter
extension ViewController : UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // Update URL session
        searchBar.endEditing(true)
    }
}
