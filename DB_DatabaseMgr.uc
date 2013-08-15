class DB_DatabaseMgr extends Object
  dependson(DB_DLLAPI)
  config(Database);


//=============================================================================
// Variables
//=============================================================================
var private DB_DLLAPI mDLLAPI;
var private GameInfo mGameInfo;         // variable added to DB_DatabaseMgr...BackReference to current GameInfo
var config ESQLDriver mDatabaseDriver;  // Used SQL driver set in UDKDatabase.ini


final function DB_DLLAPI getDLLAPI()
{
  return mDLLAPI;
}

function initDatabase(GameInfo aGameInfo)
{
  mGameInfo = aGameInfo; // set backreference to GameInfo

  mDLLAPI.SQL_initSQLDriver(mDatabaseDriver); // automatically create one empty DB
}


DefaultProperties
{
  Begin Object Class=DB_DLLAPI Name=DllApiInstance
  End Object
  mDLLAPI=DllApiInstance
}