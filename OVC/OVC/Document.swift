import Cocoa

class
Document: NSDocument {

	var	fileWrapper	= NSFileWrapper( directoryWithFileWrappers:[:] )
	
	override func
	makeWindowControllers() {
		self.addWindowController(
			NSStoryboard(
				name	: "Main"
			,	bundle	: nil
			).instantiateControllerWithIdentifier(
				"Document Window Controller"
			) as! NSWindowController
		)
	}

	override func
	readFromFileWrapper(
		fileWrapper		: NSFileWrapper
	,	ofType typeName	: String
	) throws {
		self.fileWrapper = fileWrapper
	}
}

