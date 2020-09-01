//
//  File.swift
//  Virtual Tourist
//
//  Created by Dustin McGuire on 9/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import Foundation
import CoreData


extension AlbumCollectionViewController: NSFetchedResultsControllerDelegate {
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any,
                    at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath:  IndexPath?)
    {
        switch type {
        case .insert:
            self.collectionView.insertItems(at: [newIndexPath!])
        case .delete:
            self.collectionView.deleteItems(at: [indexPath!])
        case .update:
            self.collectionView.reloadItems(at: [indexPath!])
        default:
            break
        }
    }
    
    
}
