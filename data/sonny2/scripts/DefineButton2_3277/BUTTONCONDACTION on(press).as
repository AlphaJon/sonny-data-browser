on(press){
   if(_root.Krin.PauseForScreen != true)
   {
      _root.Krin.BattlePick = 51;
      _root.Krin.progressFight = false;
      _root.gotoAndPlay("LOADBATTLESCENE");
      _root.KrinScreen._visible = false;
   }
}
