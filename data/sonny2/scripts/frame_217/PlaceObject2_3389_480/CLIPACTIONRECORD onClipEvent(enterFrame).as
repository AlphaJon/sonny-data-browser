onClipEvent(enterFrame){
   tKrin != true ? (timer = int(1000 / (getTimer() - time))) : (time = getTimer());
   tKrin = !tKrin;
   _root.frameRateNowKrin = timer;
   if(timerWait > 0)
   {
      timerWait--;
   }
   _root.KrinToolTipper.play();
   if(_root.InBattle)
   {
      if(_root.BAMBAMBAM)
      {
         _root.BAMBAMBAM = false;
         AttackEndCounter = 0;
         if(moveBammer == false)
         {
            moveBammer = true;
            if(_root.strikeSuccess)
            {
               _root.addSound("Effects",_root.Krin.soundToMake);
               if(mAry2[16] > 0)
               {
                  dispelCounterXYUX = mAry2[16];
                  eged = 0;
                  while(eged < _root.maxBuffLimit)
                  {
                     for(neinh in mAry2[15])
                     {
                        if(mTarget.BUFFARRAYK[eged].CD > 0 && mAry2[15][neinh] == _root["KRINBUFF" + mTarget.BUFFARRAYK[eged].buffId][1])
                        {
                           if(dispelCounterXYUX > 0)
                           {
                              if(mAry2[19] == _root["KRINBUFF" + mTarget.BUFFARRAYK[eged].buffId][20])
                              {
                                 dispelCounterXYUX--;
                                 numberRandomerBuffHit = Math.random();
                                 if(numberRandomerBuffHit <= mAry2[22])
                                 {
                                    numberRandomerBuffHit = Math.random();
                                    if(numberRandomerBuffHit >= _root["KRINBUFF" + mTarget.BUFFARRAYK[eged].buffId][32])
                                    {
                                       mTarget.BUFFARRAYK[eged].CD = 0;
                                       _root.applyBuffKrin(mTarget,mTarget.BUFFARRAYK[eged].buffId,-1,0,mTarget.BUFFARRAYK[eged].buffValue,eged);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     eged++;
                  }
               }
               if(!mAry2[20])
               {
                  _root.executeMove(mAry1,mAry2,mCaster,mTarget);
               }
               else
               {
                  owegwe = 0;
                  while(owegwe < 3)
                  {
                     if(_root["playerKrin" + (7 - (mCaster.teamSide + owegwe * 2))].active)
                     {
                        _root.executeMove(mAry1,mAry2,mCaster,_root["playerKrin" + (7 - (mCaster.teamSide + owegwe * 2))]);
                     }
                     owegwe++;
                  }
               }
               if(mAry2[13] != 0)
               {
                  numberRandomerBuffHit = Math.random();
                  if(numberRandomerBuffHit < mAry2[14])
                  {
                     buffUniqueCheck = true;
                     if(mAry2[21] == 0)
                     {
                        mToBeBuffed = mTarget;
                     }
                     else
                     {
                        mToBeBuffed = mCaster;
                     }
                     e = 0;
                     while(e < _root.maxBuffLimit)
                     {
                        if(_root["KRINBUFF" + mAry2[13]][27])
                        {
                           if(mToBeBuffed.BUFFARRAYK[e].buffId == mAry2[13] && mToBeBuffed.BUFFARRAYK[e].CD != 0)
                           {
                              buffUniqueCheck = false;
                              mToBeBuffed.BUFFARRAYK[e].CD = _root["KRINBUFF" + mAry2[13]][16];
                           }
                        }
                        e++;
                     }
                     if(!_root["KRINBUFF" + mAry2[13]][27] || buffUniqueCheck == true)
                     {
                        _root.applyBuffKrin(mToBeBuffed,mAry2[13],1,mCaster);
                     }
                  }
               }
               _root.applyChangesKrin(mTarget);
            }
            else
            {
               _root.addSound("Effects",_root.Krin.missToMake);
               _root.KrinNumberShow("miss",mTarget2,mAry2[0]);
            }
         }
      }
      if(AttackEndCounter < AttackEndCounterLimit)
      {
         AttackEndCounter++;
      }
      else if(AttackEndCounter == AttackEndCounterLimit)
      {
         if(usedBuff == false && mCaster.active == true)
         {
            _root.buffTicker(mCaster);
            usedBuff = true;
            if(_root.buffTickChecker)
            {
               AttackEndCounter = 0;
               _root.BAMBAMBAM = true;
               _root.moveBammer = true;
            }
         }
         else
         {
            AttackEndCounter++;
            _root.nextPlayer = true;
            _root.PlayerToMove = _root.PlayerToMove + 1;
            Cycler--;
            moveStart = false;
            cycleAss = false;
         }
      }
      if(_root.nextPlayer)
      {
         if(Cycler == 0)
         {
            _root.BattleTimeNow = 0;
            _root.InBattle = false;
            _root.speechDone = false;
            turnTime = 0;
            _root.TurnTime--;
            _root.turnTimeKKK = _root.turnTimeKKK + 1;
            _root.turnTimeKKK2 = _root.turnTimeKKK2 + 1;
            _root.phaseTeamCheck1 = 0;
            _root.phaseTeamCheck2 = 0;
            if(_root.playerKrin1.active == true)
            {
               _root.phaseTeamCheck1 = _root.phaseTeamCheck1 + 1;
            }
            if(_root.playerKrin3.active == true)
            {
               _root.phaseTeamCheck1 = _root.phaseTeamCheck1 + 1;
            }
            if(_root.playerKrin5.active == true)
            {
               _root.phaseTeamCheck1 = _root.phaseTeamCheck1 + 1;
            }
            if(_root.playerKrin2.active == true)
            {
               _root.phaseTeamCheck2 = _root.phaseTeamCheck2 + 1;
            }
            if(_root.playerKrin4.active == true)
            {
               _root.phaseTeamCheck2 = _root.phaseTeamCheck2 + 1;
            }
            if(_root.playerKrin6.active == true)
            {
               _root.phaseTeamCheck2 = _root.phaseTeamCheck2 + 1;
            }
            if(_root["KBR" + _root.Krin.BattlePick].phases.length > 0 && _root.phase <= _root["KBR" + _root.Krin.BattlePick].phases.length)
            {
               if(_root["playerKrin" + _root["KBR" + _root.Krin.BattlePick].phases[_root.phase].player].LIFEN / _root["playerKrin" + _root["KBR" + _root.Krin.BattlePick].phases[_root.phase].player].LIFEU <= _root["KBR" + _root.Krin.BattlePick].phases[_root.phase].life)
               {
                  _root.phase = _root.phase + 1;
                  _root.turnTimeKKK2 = 0;
               }
               else if(_root["KBR" + _root.Krin.BattlePick].phases[_root.phase].teamLeft > 0 && _root["phaseTeamCheck" + _root["playerKrin" + _root["KBR" + _root.Krin.BattlePick].phases[_root.phase].player].teamSide] <= _root["KBR" + _root.Krin.BattlePick].phases[_root.phase].teamLeft)
               {
                  _root.phase = _root.phase + 1;
                  _root.turnTimeKKK2 = 0;
               }
               else if(_root["KBR" + _root.Krin.BattlePick].phases[_root.phase].turn <= _root.turnTimeKKK2 && _root["KBR" + _root.Krin.BattlePick].phases[_root.phase].turn > 0)
               {
                  _root.phase = _root.phase + 1;
                  _root.turnTimeKKK2 = 0;
               }
            }
            if(_root.winDate == _root.turnTimeKKK)
            {
               _root.winCondition = _root.winDateCondition;
            }
            winCon = 0;
            loseCon = 0;
            if(_root.playerKrin1.active == false)
            {
               _root.turnBasedKrin = true;
               if(_root.Krin.BattlePick == 2)
               {
                  loseCon++;
               }
            }
            if(_root.playerKrin1.active == false)
            {
               if(_root.playerKrin3.active == false)
               {
                  if(_root.playerKrin5.active == false)
                  {
                     if(_root["playerKrin" + _root.Krin.playerNumber].teamSide == 1)
                     {
                        loseCon++;
                     }
                     else
                     {
                        winCon++;
                     }
                  }
               }
            }
            if(_root.playerKrin2.active == false)
            {
               if(_root.playerKrin4.active == false)
               {
                  if(_root.playerKrin6.active == false)
                  {
                     if(_root["playerKrin" + _root.Krin.playerNumber].teamSide == 2)
                     {
                        loseCon++;
                     }
                     else
                     {
                        winCon++;
                     }
                  }
               }
            }
            if(_root.winCondition == -1)
            {
               if(winCon)
               {
                  _root.winCondition = 1;
               }
               if(loseCon)
               {
                  _root.winCondition = 0;
               }
               if(winCon + loseCon == 2)
               {
                  _root.winCondition = 2;
               }
            }
            if(_root.winCondition >= 0)
            {
               _root.AchVal4 = _root.turnTimeKKK;
               _root.blacker5.play();
            }
            if(_root.TurnTime == 0)
            {
               _root.TeamSelect();
               if(_root.TeamMove == _root.PrevTeam)
               {
                  _root.MoveArrayFINAL[0] = _root.MoveArrayFINAL[6];
                  _root.MoveArrayFINAL[1] = _root.MoveArrayFINAL[7];
                  _root.MoveArrayFINAL[2] = _root.MoveArrayFINAL[8];
               }
               else
               {
                  _root.MoveArrayFINAL[0] = _root.MoveArrayFINAL[3];
                  _root.MoveArrayFINAL[1] = _root.MoveArrayFINAL[4];
                  _root.MoveArrayFINAL[2] = _root.MoveArrayFINAL[5];
                  _root.MoveArrayFINAL[3] = _root.MoveArrayFINAL[6];
                  _root.MoveArrayFINAL[4] = _root.MoveArrayFINAL[7];
                  _root.MoveArrayFINAL[5] = _root.MoveArrayFINAL[8];
               }
               _root.PrevTeam = _root.TeamMove;
               _root.PlayerToMove = 0;
            }
            else
            {
               if(_root.TeamMove == 1)
               {
                  _root.TeamMoveNow = 2;
                  if(_root.arenaMode)
                  {
                     _root.Krin.playerNumber = 2;
                     theGuy = "arenaPlayer2";
                  }
               }
               else
               {
                  _root.TeamMoveNow = 1;
                  if(_root.arenaMode)
                  {
                     _root.Krin.playerNumber = 1;
                     theGuy = "arenaPlayer1";
                  }
               }
               if(_root["playerKrin" + _root.Krin.playerNumber].teamSide == _root.TeamMoveNow)
               {
                  this.thingerClock.gotoAndStop("friend");
               }
               else
               {
                  this.thingerClock.gotoAndStop("enemy");
               }
            }
         }
         else
         {
            _root.nextPlayer = false;
            if(_root.PlayerToMove == 6)
            {
               _root.PlayerToMove = 0;
            }
            if(_root.arenaMode)
            {
               theGuy = "arenaPlayer" + _root.Krin.playerNumber;
            }
            mAry1 = _root["KRINABILITY" + _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][3]];
            mAry2 = _root["KRINABILITYB" + _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][3]];
            mCaster = _root["playerKrin" + _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][1]];
            mTarget = _root["playerKrin" + _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][2]];
            mCaster2 = "player" + _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][1];
            mTarget2 = "player" + _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][2];
            if(mCaster.active)
            {
               usedBuff = false;
            }
            else
            {
               usedBuff = true;
            }
            if(mCaster.playerID == _root.Krin.playerNumber)
            {
               m = 0;
               while(m < 8)
               {
                  if(_root[theGuy].abilityCoolDown[m] > 0)
                  {
                     _root[theGuy].abilityCoolDown[m]--;
                  }
                  m++;
               }
            }
            if(_root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][3] != 0 && mTarget.active == true && mCaster.STUN == 0)
            {
               if(moveStart != true)
               {
                  moveBammer = false;
                  if(mCaster.FOCUSN >= mAry1[5] && mCaster.LIFEN > mAry1[6] + Math.round(mCaster.LIFEU * mAry1[16]))
                  {
                     mCaster.FOCUSN -= mAry1[5];
                     mCaster.LIFEN -= mAry1[6] + Math.round(mCaster.LIFEU * mAry1[16]);
                     _root.lifeBarUpdate(mCaster.playerID);
                     if(mAry1[10] != "Shock" && mTarget.STUN == 0)
                     {
                        spdVar1 = mTarget.SPEEDU / (mCaster.SPEEDU * mAry1[9]);
                        spdVar2 = spdVar1 * 3 + 3;
                        spdVar3 = spdVar1 * spdVar2;
                        if(spdVar3 > 75)
                        {
                           spdVar3 = 75;
                        }
                        if(spdVar3 < 1)
                        {
                           spdVar3 = 0;
                        }
                        _root.KRRR();
                        if(_root.KRSO > spdVar3)
                        {
                           _root.strikeSuccess = true;
                        }
                        else
                        {
                           _root.strikeSuccess = false;
                        }
                     }
                     else
                     {
                        _root.strikeSuccess = true;
                     }
                     moveStart = true;
                     if(mCaster.playerID == _root.Krin.playerNumber)
                     {
                        if(_root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][3] != 0)
                        {
                           _root[theGuy].abilityCoolDown[_root.moveCoolDownBreaker] = mAry1[7];
                           _root.krinToMove._visible = false;
                           if(_root.turnBasedKrin)
                           {
                           }
                        }
                        _root.krinToMove.toolTipTitle = _root.krinToMove.thinger1;
                        _root.krinToMove.toolTip = _root.krinToMove.thinger2;
                     }
                     if(mCaster.AION)
                     {
                        mCaster[mCaster.AI_CD_ARR][mCaster.AI_CD_PUT] = mAry1[7];
                     }
                     if(mAry1[10] == "Melee")
                     {
                        _root.Krin.missToMake = undefined;
                        _root.Krin.soundToMake = mAry1[18];
                        _root.BATTLESCREEN[mCaster2].inner.gotoAndPlay("run");
                        _root.krinMelee(_root.BATTLESCREEN[mCaster2],_root.BATTLESCREEN[mTarget2],mAry1[11],mAry1[12],mAry1[13]);
                     }
                     if(mAry1[10] == "Missile")
                     {
                        _root.addSound("Effects","sfx_cast");
                        _root.Krin.missToMake = "sfx_magicmiss";
                        _root.Krin.soundToMake = mAry1[18];
                        _root.BATTLESCREEN[mCaster2].inner.colortobe = mAry1[11];
                        _root.BATTLESCREEN[mCaster2].inner.gotoAndPlay("cast");
                        if(!mAry2[20])
                        {
                           if(_root.KrinSettings.SFX)
                           {
                              _root.xPoint1 = _root.BATTLESCREEN[mTarget2]._x + _root.BATTLESCREEN[mTarget2]._width / 2;
                              _root.yPoint1 = _root.BATTLESCREEN[mTarget2]._y + _root.BATTLESCREEN[mTarget2]._height / 2;
                              _root.zoomPointX = _root.xPoint1 * (- _root.zoomRatioNEW) + 400;
                              _root.zoomPointY = _root.yPoint1 * (- _root.zoomRatioNEW) + 300;
                              _root.GridZoomer.gotoAndPlay("KrinZoomGo");
                              _root.zoomPause = 5;
                           }
                           _root.krinBoltMake(_root.BATTLESCREEN[mCaster2],_root.BATTLESCREEN[mTarget2],mAry1[11],mAry1[12],mAry1[13]);
                        }
                        else
                        {
                           owegwe = 0;
                           while(owegwe < 3)
                           {
                              if(_root["playerKrin" + (7 - (mCaster.teamSide + owegwe * 2))].active)
                              {
                                 _root.krinBoltMake(_root.BATTLESCREEN[mCaster2],_root.BATTLESCREEN["player" + _root["playerKrin" + (7 - (mCaster.teamSide + owegwe * 2))].playerID],mAry1[11],mAry1[12],mAry1[13]);
                              }
                              owegwe++;
                           }
                        }
                     }
                     if(mAry1[10] == "Shock")
                     {
                        _root.Krin.missToMake = undefined;
                        _root.Krin.soundToMake = undefined;
                        _root.addSound("Effects",mAry1[18]);
                        _root.BATTLESCREEN[mCaster2].inner.colortobe = mAry1[11];
                        _root.BATTLESCREEN[mCaster2].inner.gotoAndPlay("cast");
                        _root.BATTLESCREEN.attachMovie(mAry1[13],"b1",-9);
                        _root.BATTLESCREEN.b1._x = _root.BATTLESCREEN[mTarget2]._x;
                        _root.BATTLESCREEN.b1._y = _root.BATTLESCREEN[mTarget2]._y;
                        if(_root.KrinSettings.SFX)
                        {
                           _root.xPoint1 = _root.BATTLESCREEN[mTarget2]._x + _root.BATTLESCREEN[mTarget2]._width / 2;
                           _root.yPoint1 = _root.BATTLESCREEN[mTarget2]._y + _root.BATTLESCREEN[mTarget2]._height / 2;
                           _root.zoomPointX = _root.xPoint1 * -0.3 + 400;
                           _root.zoomPointY = _root.yPoint1 * -0.3 + 300;
                           _root.GridZoomer.gotoAndPlay("KrinZoomGo");
                           _root.zoomPause = 1;
                        }
                        if(_root.KrinSettings.SFX && mAry1[9] >= 0)
                        {
                           _root.GridShaker.play();
                        }
                        _root.BAMBAMBAM = true;
                     }
                     KrinPVar01 = _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][1];
                     _root.autoMoveK = true;
                     _root.krinAddMove(KrinPVar01,KrinPVar01,0);
                     _root.autoMoveK = false;
                  }
                  else
                  {
                     if(mCaster.playerID == _root.Krin.playerNumber)
                     {
                        if(mCaster.FOCUSN < mAry1[5])
                        {
                           _root.KrinCombatText.combatTexter = "You failed to use your ability because you don\'t have enough Focus.";
                           _root.KrinCombatText.gotoAndPlay("GO");
                        }
                        if(mCaster.LIFEN <= mAry1[6] + Math.round(mCaster.LIFEU * mAry1[16]))
                        {
                           _root.KrinCombatText.combatTexter = "You failed to use your ability because you don\'t have enough Health.";
                           _root.KrinCombatText.gotoAndPlay("GO");
                        }
                     }
                     KrinPVar01 = _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][1];
                     _root.autoMoveK = true;
                     _root.krinAddMove(KrinPVar01,KrinPVar01,0);
                     _root.autoMoveK = false;
                     if(mCaster.playerID == _root.Krin.playerNumber)
                     {
                        _root.krinToMove.toolTipTitle = _root.krinToMove.thinger1;
                        _root.krinToMove.toolTip = _root.krinToMove.thinger2;
                        _root.krinToMove._visible = false;
                        if(_root.turnBasedKrin)
                        {
                        }
                     }
                     if(mCaster.active == false)
                     {
                        _root.nextPlayer = true;
                        _root.PlayerToMove = _root.PlayerToMove + 1;
                        Cycler--;
                        moveStart = false;
                        cycleAss = false;
                     }
                     if(usedBuff == false)
                     {
                        _root.buffTicker(mCaster);
                        usedBuff = true;
                        if(_root.buffTickChecker && mCaster.active == true)
                        {
                           moveStart = true;
                           AttackEndCounter = 0;
                           _root.BAMBAMBAM = true;
                           _root.moveBammer = true;
                        }
                        else
                        {
                           _root.nextPlayer = true;
                           _root.PlayerToMove = _root.PlayerToMove + 1;
                           Cycler--;
                           moveStart = false;
                           cycleAss = false;
                        }
                     }
                  }
               }
            }
            else
            {
               if(mCaster.STUN != 0 && _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][3] != 0)
               {
                  if(mCaster.playerID == _root.Krin.playerNumber)
                  {
                     _root.KrinCombatText.combatTexter = "You failed to use your ability because you are stunned this round.";
                     _root.KrinCombatText.gotoAndPlay("GO");
                  }
               }
               if(mCaster.playerID == _root.Krin.playerNumber)
               {
                  _root.krinToMove.toolTipTitle = _root.krinToMove.thinger1;
                  _root.krinToMove.toolTip = _root.krinToMove.thinger2;
                  _root.krinToMove._visible = false;
                  if(_root.turnBasedKrin)
                  {
                  }
               }
               KrinPVar01 = _root[_root.MoveArrayFINAL[_root.PlayerToMove] + "MOVE"][1];
               _root.autoMoveK = true;
               _root.krinAddMove(KrinPVar01,KrinPVar01,0);
               _root.autoMoveK = false;
               if(mCaster.active == false)
               {
                  _root.nextPlayer = true;
                  _root.PlayerToMove = _root.PlayerToMove + 1;
                  Cycler--;
                  moveStart = false;
                  cycleAss = false;
               }
               if(usedBuff == false)
               {
                  _root.buffTicker(mCaster);
                  usedBuff = true;
                  if(_root.buffTickChecker && mCaster.active == true)
                  {
                     AttackEndCounter = 0;
                     moveStart = true;
                     _root.BAMBAMBAM = true;
                     _root.moveBammer = true;
                  }
                  else
                  {
                     _root.nextPlayer = true;
                     _root.PlayerToMove = _root.PlayerToMove + 1;
                     Cycler--;
                     moveStart = false;
                     cycleAss = false;
                  }
               }
            }
         }
      }
   }
   if(_root.InBattle == false && timerWait == 0 && _root.winCondition < 0)
   {
      if(_root.speechDone == true)
      {
         if(!_root.turnBasedKrin && _root.TeamMoveNow == _root["playerKrin" + _root.Krin.playerNumber].teamSide)
         {
            _root.BattleTimeNow = _root.BattleTimeNow + 1;
         }
         else if(_root.TeamMoveNow != _root["playerKrin" + _root.Krin.playerNumber].teamSide)
         {
            _root.BattleTimeNow = _root.BattleTimeLimit;
            i = 0;
            while(i < 6)
            {
               if(_root["playerKrin" + _root.AITeamMoveOrder[i]].AIGoER)
               {
                  if(_root["playerKrin" + _root.AITeamMoveOrder[i]].AION == true)
                  {
                     if(_root["playerKrin" + _root.AITeamMoveOrder[i]].active == true)
                     {
                        _root.LowerCD(_root.AITeamMoveOrder[i]);
                        _root.AImoveAdder(_root.AITeamMoveOrder[i]);
                        trace("ADD1");
                     }
                     else
                     {
                        _root.krinAddMove(_root.AITeamMoveOrder[i],_root.AITeamMoveOrder[i],0);
                     }
                  }
               }
               i++;
            }
            _root.AIGoERSwitch();
         }
         else
         {
            if(_root["playerKrin" + _root.Krin.playerNumber].active == false)
            {
               if(_root.InBattle == false)
               {
                  _root.krinAddMove(_root.Krin.playerNumber,_root.Krin.playerNumber,0);
                  if(_root.turnBasedKrin)
                  {
                     if(_root.InBattle == false && timerWait == 0 && _root.winCondition < 0 && _root.speechDone == true)
                     {
                        _root.moveChoosen = true;
                     }
                  }
               }
            }
            if(!_root.moveChoosen)
            {
               _root.BattleTimeNow = _root.BattleTimeLimit - 0.000001;
            }
            else
            {
               i = 0;
               while(i < 6)
               {
                  if(_root["playerKrin" + _root.AITeamMoveOrder[i]].AIGoER)
                  {
                     trace("STEP1");
                     if(_root["playerKrin" + _root.AITeamMoveOrder[i]].AION == true)
                     {
                        trace("STEP2");
                        if(_root["playerKrin" + _root.AITeamMoveOrder[i]].active == true)
                        {
                           trace("STEP3");
                           _root.LowerCD(_root.AITeamMoveOrder[i]);
                           _root.AImoveAdder(_root.AITeamMoveOrder[i]);
                           trace("ADD2");
                        }
                        else
                        {
                           _root.krinAddMove(_root.AITeamMoveOrder[i],_root.AITeamMoveOrder[i],0);
                        }
                     }
                  }
                  i++;
               }
               _root.AIGoERSwitch();
               _root.BattleTimeNow = _root.BattleTimeLimit;
               _root.moveChoosen = false;
            }
         }
         if(_root.BattleTimeNow == _root.BattleTimeLimit - 1)
         {
            i = 0;
            while(i < 6)
            {
               if(_root["playerKrin" + _root.AITeamMoveOrder[i]].AIGoER)
               {
                  if(_root["playerKrin" + _root.AITeamMoveOrder[i]].AION == true)
                  {
                     if(_root["playerKrin" + _root.AITeamMoveOrder[i]].active == true)
                     {
                        _root.LowerCD(_root.AITeamMoveOrder[i]);
                        _root.AImoveAdder(_root.AITeamMoveOrder[i]);
                        trace("ADD3");
                     }
                     else
                     {
                        _root.krinAddMove(_root.AITeamMoveOrder[i],_root.AITeamMoveOrder[i],0);
                     }
                  }
               }
               i++;
            }
            _root.AIGoERSwitch();
         }
         if(cycleAss != true)
         {
            _root.hardSkip = false;
            if(_root["playerKrin" + _root.Krin.playerNumber].teamSide == _root.TeamMoveNow)
            {
               this.thingerClock.gotoAndStop("friend");
               _root.UI_BAR.subAI_BAR.gotoAndStop("SHOW");
               if(_root["playerKrin" + _root.Krin.playerNumber].teamSide == 1)
               {
                  if(_root.playerKrin3.active)
                  {
                     _root.UI_BAR.subAI_BAR.p3.gotoAndStop("active");
                  }
                  else
                  {
                     _root.UI_BAR.subAI_BAR.p3.gotoAndStop("inactive");
                  }
                  if(_root.playerKrin5.active)
                  {
                     _root.UI_BAR.subAI_BAR.p5.gotoAndStop("active");
                  }
                  else
                  {
                     _root.UI_BAR.subAI_BAR.p5.gotoAndStop("inactive");
                  }
                  _root.UI_BAR.subAI_BAR._x = _root.UI_BAR.subAI_BAR.save_x1;
                  _root.UI_BAR.subAI_BAR.p3.setAG(3);
                  _root.UI_BAR.subAI_BAR.p5.setAG(5);
               }
               else
               {
                  if(_root.playerKrin4.active)
                  {
                     _root.UI_BAR.subAI_BAR.p3.gotoAndStop("active");
                  }
                  else
                  {
                     _root.UI_BAR.subAI_BAR.p3.gotoAndStop("inactive");
                  }
                  if(_root.playerKrin6.active)
                  {
                     _root.UI_BAR.subAI_BAR.p5.gotoAndStop("active");
                  }
                  else
                  {
                     _root.UI_BAR.subAI_BAR.p5.gotoAndStop("inactive");
                  }
                  _root.UI_BAR.subAI_BAR._x = _root.UI_BAR.subAI_BAR.save_x2;
                  _root.UI_BAR.subAI_BAR.p3.setAG(4);
                  _root.UI_BAR.subAI_BAR.p5.setAG(6);
               }
            }
            else
            {
               this.thingerClock.gotoAndStop("enemy");
               _root.UI_BAR.subAI_BAR.gotoAndStop("HIDE");
            }
            if(_root.krinToMove.toolTip != _root.krinToMove.thinger2)
            {
               _root.krinToMove.toolTip = _root.krinToMove.thinger4;
            }
            u = 0;
            while(u < 6)
            {
               _root["KrinSelector" + (u + 1)]._visible = true;
               u++;
            }
            cycleAss = true;
         }
         BattleTime = _root.BattleTimeNow;
         if(_root.BattleTimeNow == _root.BattleTimeLimit)
         {
            w = 1;
            while(w < 7)
            {
               _root.healedThisTurn[w] = 0;
               w++;
            }
            if(_root.krinToMove.toolTip != _root.krinToMove.thinger2)
            {
               _root.krinToMove.thinger4 = _root.krinToMove.toolTip;
               _root.krinToMove.toolTip = _root.krinToMove.thinger3;
            }
            _root.InBattle = true;
            _root.nextPlayer = true;
            _root.selector._visible = false;
            i = 0;
            while(i < 6)
            {
               _root["KrinSelector" + (i + 1)]._visible = false;
               i++;
            }
            Cycler = 3;
         }
      }
      else if(_root["KBR" + _root.Krin.BattlePick].speeches.length == 0)
      {
         _root.speechDone = true;
      }
      else if(_root.nextSpeechKKK == true)
      {
         _root.speechAdds = 0;
         for(xyz in _root["KBR" + _root.Krin.BattlePick].speeches)
         {
            if(_root.nextSpeechKKK == true)
            {
               if(_root.getPNum(_root.speechOn) == NaN)
               {
                  _root.hardSkip = true;
               }
               if(_root["KBR" + _root.Krin.BattlePick].speeches[_root.speechOn].phase == _root.phase)
               {
                  if(_root["KBR" + _root.Krin.BattlePick].speeches[_root.speechOn].turnTime == _root.turnTimeKKK2)
                  {
                     if(_root["KBR" + _root.Krin.BattlePick].speeches[_root.speechOn].turnTime2 == turnTime)
                     {
                        if(_root["playerKrin" + _root.getPNum(_root.speechOn)].active && _root.hardSkip != true)
                        {
                           kebabBurn = true;
                           turnTime++;
                           if(_root["playerKrin" + _root.getPNum(_root.speechOn)].teamSide == 2)
                           {
                              _root.combatScript._x = 473.3000000000001;
                              _root.combatScript._y = 460.7;
                           }
                           else
                           {
                              _root.combatScript._x = 21.800000000000008;
                              _root.combatScript._y = 460.7;
                           }
                           _root.combatScript.inner.combatText = _root["KBR" + _root.Krin.BattlePick].speeches[_root.speechOn].say;
                           _root.combatScript.inner.combatTextName = _root["playerKrin" + _root.getPNum(_root.speechOn)].playerName;
                           _root.combatScript.inner.inner2.gotoAndStop(_root.combatScript.inner.combatTextName);
                           if(_root.Krin.qual == "LOW" || _root.Krin.graphics == false)
                           {
                              benderADJ = 30;
                           }
                           else
                           {
                              benderADJ = 30;
                           }
                           benderADJ = 30;
                           _root.timeSpeechKKKUP = _root["KBR" + _root.Krin.BattlePick].speeches[_root.speechOn].timeToSay * benderADJ;
                           _root.BATTLESCREEN["player" + _root.getPNum(_root.speechOn)].speech.play();
                           if(_root["KBR" + _root.Krin.BattlePick].speeches[_root.speechOn].voiceOver != "")
                           {
                              _root.addSound("Effects",_root["KBR" + _root.Krin.BattlePick].speeches[_root.speechOn].voiceOver);
                           }
                           _root.speechOn = _root.speechOn + 1;
                           _root.speechAdds = _root.speechAdds + 1;
                           _root.nextSpeechKKK = false;
                           _root.combatScript.timeX = 0;
                        }
                        else
                        {
                           _root.speechOn = _root.speechOn + 1;
                           _root.nextSpeechKKK = true;
                        }
                     }
                  }
               }
            }
         }
         if(_root.speechAdds == 0)
         {
            _root.speechDone = true;
            if(_root["KBR" + _root.Krin.BattlePick].phases[_root.phase - 1].endGame)
            {
               _root.winCondition = _root["KBR" + _root.Krin.BattlePick].phases[_root.phase - 1].winOrLose;
               _root.blacker5.play();
            }
         }
      }
   }
}
