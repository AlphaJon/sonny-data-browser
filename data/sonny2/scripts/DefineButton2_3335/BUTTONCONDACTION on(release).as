on(release){
   if(!PvPCodeLode)
   {
      _root.playerToLoadforPvP = 1;
      krinNavFadeSpeech.gotoAndStop("LOAD");
      krinNavFadeSpeech._visible = true;
      krinNavFadeSpeech.naxTevt2.selectable = true;
      PvPCodeLode = true;
   }
}
