::CDS <- {
	ID = "mod_cds",
	Version = "0.1.0",
	Name = "Character Dialog System"
}

// Register mod using modhooks
::mods_registerMod(::CDS.ID, ::CDS.Version, ::CDS.Name);
::mods_queue(::CDS.ID, "mod_msu(>=1.2.4)", function(){

	// Register MSU Mod
	::CDS.Mod <- ::MSU.Class.Mod(::CDS.ID, ::CDS.Version, ::CDS.Name);

	// Register screen with modhooks
	::mods_registerJS("CDSScreen.js");
	::mods_registerCSS("CDSScreen.css");

	// Create a new SQ screen
	::CDS.Screen <- this.new("scripts/ui/screens/cds_screen");

	// Register screen with MSU to handle connection
	::MSU.UI.registerConnection(::CDS.Screen);

});