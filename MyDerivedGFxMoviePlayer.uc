class MyDerivedGFxMoviePlayer extends GFxMoviePlayer
    dependson(DB_DLLAPI)
    config(Database);
var WorldInfo ThisWorld;
var SQLProject_Manager mSQLProject_Manager;

// Called from elsewhere in script to initialize the movie
event InitializeMoviePlayer()
{
     // Sets up our delegate to be called from ActionScript
     SetupASDelegate(DoFancyThings);
}

// ...


//Called from STHUD'd PostBeginPlay()
function Init2()
{
	//Start and load the SWF Movie
	Start();
	Advance(0.f);
	
	ThisWorld = GetPC().WorldInfo;

}
delegate FancyThingsDelegate(String username, String password);

function DoFancyThings(String username, String password)
{
     local bool Valid;
     Valid = mSQLProject_Manager.validateUserPass(username, password);

        if(Valid)
         ActionScriptVoid("OK") ;

         `log(Valid);
}

function SetupASDelegate(delegate<FancyThingsDelegate> d)
{
     local GFxObject RootObj;

     RootObj = GetVariableObject("_root");
     ActionScriptSetFunction(RootObj, "DoFancyThings");
}

function PostBeginPlay()
{
    mSQLProject_Manager.TestDatabase();
    DoFancyThings("sdsdgdgsgsg", "asffa");

}

DefaultProperties
{
}