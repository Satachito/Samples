import Cocoa

extension
NSFileWrapper {
	
	func
	children() -> [ NSFileWrapper ]? {
		if let wFWs = fileWrappers {
			var v = [ NSFileWrapper ]()
			for ( _, value ) in wFWs {
				v.append( value )
			}
			return v
		} else {
			return nil
		}
	}
	
	func
	isLeaf() -> Bool {
		return !directory
	}
}

class
ViewController: NSViewController {
}

