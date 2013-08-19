/* Render mouse cursor and user HUD. Display player information (blood, position ..). */
class MenuHUD extends HUD;

var MyDerivedGFxMoviePlayer HudMovie;

//Called after game loaded - initialise things
simulated function PostBeginPlay()
{
	super.PostBeginPlay();

	//Create a STGFxHUD for HudMovie
	HudMovie = new class'MyDerivedGFxMoviePlayer';
	//Set the HudMovie's PlayerOwner
	HudMovie.SetTimingMode(TM_Real);
	//Call HudMovie's Initialise function
	HudMovie.Init2();

}






