on(release){
   arenaMode = true;
   currentArenaPlayer = 1;
   _root.Krin.dataMode = "load";
   arenaPlayer1 = new Object();
   arenaPlayer1.questProgress = new Array();
   arenaPlayer1.PER = new Object();
   arenaPlayer1.PER.Physical = 100;
   arenaPlayer1.PER.Magic = 100;
   arenaPlayer1.PER.Ice = 100;
   arenaPlayer1.PER.Fire = 100;
   arenaPlayer1.PER.Lightning = 100;
   arenaPlayer1.PER.Earth = 100;
   arenaPlayer1.PER.Shadow = 100;
   arenaPlayer1.PER.Poison = 100;
   arenaPlayer1.DEF = new Object();
   arenaPlayer1.DEF.Physical = 100;
   arenaPlayer1.DEF.Magic = 100;
   arenaPlayer1.DEF.Ice = 100;
   arenaPlayer1.DEF.Fire = 100;
   arenaPlayer1.DEF.Lightning = 100;
   arenaPlayer1.DEF.Earth = 100;
   arenaPlayer1.DEF.Shadow = 100;
   arenaPlayer1.DEF.Poison = 100;
   arenaPlayer1.agArray0 = new Array();
   arenaPlayer1.agArray1 = new Array();
   arenaPlayer1.agArray2 = new Array();
   arenaPlayer1.agArray3 = new Array();
   arenaPlayer1.agArray4 = new Array();
   arenaPlayer1.agArray5 = new Array();
   arenaPlayer1.agMode = new Array();
   arenaPlayer1.moveMatrix = new Array();
   arenaPlayer1.moveMatrix2 = new Array();
   arenaPlayer1.moveMatrix2Limit = new Array();
   arenaPlayer1.talentMainArray = new Array();
   arenaPlayer1.skillAdderMatrix = new Array();
   arenaPlayer1.skillAdderMatrixOld = new Array();
   arenaPlayer1.buffAdderMatrix = new Array();
   arenaPlayer1.itemArray = new Array();
   arenaPlayer1.friendArray = new Array();
   arenaPlayer1.LevelStats = new Array();
   arenaPlayer1.equipArray0 = new Array();
   arenaPlayer1.equipArray1 = new Array();
   arenaPlayer1.equipArray2 = new Array();
   arenaPlayer1.equipArray3 = new Array();
   arenaPlayer1.equipArray4 = new Array();
   arenaPlayer1.equipArray5 = new Array();
   arenaPlayer1.PerSets0 = new Array();
   arenaPlayer1.PerSets1 = new Array();
   arenaPlayer1.PerSets2 = new Array();
   arenaPlayer1.PerSets3 = new Array();
   arenaPlayer1.PerSets4 = new Array();
   arenaPlayer1.PerSets5 = new Array();
   arenaPlayer1.DefSets0 = new Array();
   arenaPlayer1.DefSets1 = new Array();
   arenaPlayer1.DefSets2 = new Array();
   arenaPlayer1.DefSets3 = new Array();
   arenaPlayer1.DefSets4 = new Array();
   arenaPlayer1.DefSets5 = new Array();
   arenaPlayer1.StatSets0 = new Array();
   arenaPlayer1.StatSets1 = new Array();
   arenaPlayer1.StatSets2 = new Array();
   arenaPlayer1.StatSets3 = new Array();
   arenaPlayer1.StatSets4 = new Array();
   arenaPlayer1.StatSets5 = new Array();
   arenaPlayer1.friendArrayX = new Array();
   arenaPlayer1.ExpSets = new Array();
   arenaPlayer1.ClassStats = new Array();
   arenaPlayer2 = new Object();
   arenaPlayer2.questProgress = new Array();
   arenaPlayer2.PER = new Object();
   arenaPlayer2.PER.Physical = 100;
   arenaPlayer2.PER.Magic = 100;
   arenaPlayer2.PER.Ice = 100;
   arenaPlayer2.PER.Fire = 100;
   arenaPlayer2.PER.Lightning = 100;
   arenaPlayer2.PER.Earth = 100;
   arenaPlayer2.PER.Shadow = 100;
   arenaPlayer2.PER.Poison = 100;
   arenaPlayer2.DEF = new Object();
   arenaPlayer2.DEF.Physical = 100;
   arenaPlayer2.DEF.Magic = 100;
   arenaPlayer2.DEF.Ice = 100;
   arenaPlayer2.DEF.Fire = 100;
   arenaPlayer2.DEF.Lightning = 100;
   arenaPlayer2.DEF.Earth = 100;
   arenaPlayer2.DEF.Shadow = 100;
   arenaPlayer2.DEF.Poison = 100;
   arenaPlayer2.agArray0 = new Array();
   arenaPlayer2.agArray1 = new Array();
   arenaPlayer2.agArray2 = new Array();
   arenaPlayer2.agArray3 = new Array();
   arenaPlayer2.agArray4 = new Array();
   arenaPlayer2.agArray5 = new Array();
   arenaPlayer2.agMode = new Array();
   arenaPlayer2.moveMatrix = new Array();
   arenaPlayer2.moveMatrix2 = new Array();
   arenaPlayer2.moveMatrix2Limit = new Array();
   arenaPlayer2.talentMainArray = new Array();
   arenaPlayer2.skillAdderMatrix = new Array();
   arenaPlayer2.skillAdderMatrixOld = new Array();
   arenaPlayer2.buffAdderMatrix = new Array();
   arenaPlayer2.itemArray = new Array();
   arenaPlayer2.friendArray = new Array();
   arenaPlayer2.LevelStats = new Array();
   arenaPlayer2.equipArray0 = new Array();
   arenaPlayer2.equipArray1 = new Array();
   arenaPlayer2.equipArray2 = new Array();
   arenaPlayer2.equipArray3 = new Array();
   arenaPlayer2.equipArray4 = new Array();
   arenaPlayer2.equipArray5 = new Array();
   arenaPlayer2.PerSets0 = new Array();
   arenaPlayer2.PerSets1 = new Array();
   arenaPlayer2.PerSets2 = new Array();
   arenaPlayer2.PerSets3 = new Array();
   arenaPlayer2.PerSets4 = new Array();
   arenaPlayer2.PerSets5 = new Array();
   arenaPlayer2.DefSets0 = new Array();
   arenaPlayer2.DefSets1 = new Array();
   arenaPlayer2.DefSets2 = new Array();
   arenaPlayer2.DefSets3 = new Array();
   arenaPlayer2.DefSets4 = new Array();
   arenaPlayer2.DefSets5 = new Array();
   arenaPlayer2.StatSets0 = new Array();
   arenaPlayer2.StatSets1 = new Array();
   arenaPlayer2.StatSets2 = new Array();
   arenaPlayer2.StatSets3 = new Array();
   arenaPlayer2.StatSets4 = new Array();
   arenaPlayer2.StatSets5 = new Array();
   arenaPlayer2.friendArrayX = new Array();
   arenaPlayer2.ExpSets = new Array();
   arenaPlayer2.ClassStats = new Array();
   gotoAndStop("dataMenu");
}
