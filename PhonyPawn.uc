class PhonyPawn extends UTPawn;

var SQLProject_Manager mSQLProject_Manager;
defaultproperties
{

bWeaponAttachmentVisible=false
}
function simulated PostBeginPlay()
{
      local bool Valid;
      mSQLProject_Manager = spawn(class'mSQLProject_Manager', self,,Location);
      mSQLProject_Manager.TestDatabase();
     Valid = mSQLProject_Manager.validateUserPass("username", "password");

     `log("ABCD5: " @ Valid)  ;
}










