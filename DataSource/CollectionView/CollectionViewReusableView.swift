//
//  CollectionViewReusableView.swift
//  DataSource
//
//  Created by Vadim Yelagin on 14/06/15.
//  Copyright (c) 2015 Fueled. All rights reserved.
//

import UIKit
import ReactiveCocoa

/// `UICollectionReusableView` subclass that implements `DataSourceItemReceiver` protocol
/// by putting received dataSource items into a `MutableProperty` called `item`.
/// - note:
///   You are not required to subclass `CollectionViewReusableView` class in order
///   to use your cell subclass with `CollectionViewDataSource`.
///   Instead you can implement `DataSourceItemReceiver`
///   protocol directly in any `UICollectionReusableView` subclass.
public class CollectionViewReusableView: UICollectionReusableView, DataSourceItemReceiver {

	public final let item = MutableProperty<Any?>(nil)

	public func ds_setItem(item: Any) {
		self.item.value = item
	}

}