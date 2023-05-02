// make sure the name of the variable matches the ID of the squirrel screen
var CDSScreen = function(_parent) {
	MSUUIScreen.call(this);
	this.mModID = "mod_cds";
	this.mID = "CDSScreen";
	this.mContainer = null;
}

CDSScreen.prototype = Object.create(MSUUIScreen.prototype);

Object.defineProperty(CDSScreen.prototype, 'constructor', {
	value: CDSScreen,
	enumerable: false,
	writable: true
});

CDSScreen.prototype.createDIV = function (_parentDiv) {
	this.mContainer = $('<div class="cds-screen"></div>');
	_parentDiv.append(this.mContainer);
}

CDSScreen.prototype.destroyDIV = function () {
	this.mContainer.empty();
	this.mContainer.remove();
	this.mContainer = null;
}

CDSScreen.prototype.pushText = function (_text) {
	this.mContainer.empty();
	var t = "<p>" + _text + "</p>";
	this.mContainer.append(t);
}

CDSScreen.prototype.clearText = function () {
	this.mContainer.empty();
}

// DO NOT forget this line, as it creates the screen in the first place
registerScreen("CDSScreen", new CDSScreen());