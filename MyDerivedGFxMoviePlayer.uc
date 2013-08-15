class MyDerivedGFxMoviePlayer extends GFxMoviePlayer;

// Called from elsewhere in script to initialize the movie
event InitializeMoviePlayer()
{
     // Sets up our delegate to be called from ActionScript
     SetupASDelegate(DoFancyThings);
}

// ...

delegate bool FancyThingsDelegate(String username, String password);

function bool DoFancyThings(String username, String password)
{
     // Code goes here...
     if (username == "username" && password == "password")
        return true;
     return false;
}

function SetupASDelegate(delegate<FancyThingsDelegate> d)
{
     local GFxObject RootObj;

     RootObj = GetVariableObject("_root");
     ActionScriptSetFunction(RootObj, "DoFancyThings");
}