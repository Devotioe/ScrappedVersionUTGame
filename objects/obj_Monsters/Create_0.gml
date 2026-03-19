function Monster(name_, hp_, atk_, def_, flee_, spareable_) constructor{
	name = name_;
	hp = hp_;
	atk = atk_;
	def = def_;
	flee = flee_;
	spareable = spareable_;
}

global.Devo = new Monster("Devo", 1, 1, 999 , false, false);
global.Sans = new Monster("Sans", 1, 1, 999, false, false);
global.Test = new Monster("Test", 100, 100, 20, true, false);
global.Test2 = new Monster("Test2", 50, 50, 20, true, false);

