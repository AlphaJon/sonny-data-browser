on(rollOver){
   bioDis.gotoAndPlay("START");
   _root.thereIsASlotSelected = true;
   _root.KrinToolTipper.tt = _root.KrinLang[KLangChoosen].CLASS[0];
   _root.KrinToolTipper.t = _root.KrinLang[KLangChoosen].CLASSDESCRIPT[0];
   _root.KrinToolTipper.gotoAndStop("GO");
}
