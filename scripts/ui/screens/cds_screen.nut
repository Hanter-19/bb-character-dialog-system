this.cds_screen <- ::inherit("scripts/mods/msu/ui_screen", {
	m = {
		ID = "CDSScreen"
	}

	// connect() inherited from MSU

	function show() {
		this.m.JSHandle.asyncCall("show", null);
	}

	function hide() {
		this.m.JSHandle.asyncCall("hide", null);
	}

	function pushText(_text) {
		this.m.JSHandle.asyncCall("pushText", _text);
	}

	function pushTextAndShow(_text) {
		this.pushText(_text);
		this.show();
	}

	function clearText() {
		this.m.JSHandle.asyncCall("clearText", null);
	}

	function hideAndClearText() {
		this.hide();
		this.clearText();
	}

});