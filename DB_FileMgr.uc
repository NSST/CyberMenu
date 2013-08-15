class DB_FileMgr extends Object
  dependson(DB_DLLAPI)
  config(Database);


//=============================================================================
// Variables
//=============================================================================
var private DB_DatabaseMgr mDatabaseMgr;
var private DB_DLLAPI mDLLAPI;


function initFilemanager(DB_DatabaseMgr aDatabaseMgr)
{
  mDatabaseMgr = aDatabaseMgr;
  mDLLAPI = mDatabaseMgr.getDLLAPI();
}


DefaultProperties
{
}