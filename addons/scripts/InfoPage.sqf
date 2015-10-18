// infoPage.sqf
// by CRE4MPIE
// ver 0.1
// 2015-02-01 01:20pm
// contributions from BIStudio Forums, by CRE4MPIE

sleep 30;   //delay before message is displayed after logging in
	
_text = "
<t align='center'><t shadow= 1 shadowColor='#000000'><t size='1.2'><t color='#ff0000'>GamersInc. Wasteland Altis</t>
<br />
<br />
<t align='center'><t size='1.2'><t shadow= 1 shadowColor='#000000'>Keyboard Shortcuts</t><br />
<br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\windows.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Player Names</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\end.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Insert/Remove Earplugs</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\v.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Open/Cut Parachute</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\h.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Holster Weapon</t><br />
<t align='left'><img size='2' shadow = 0 image='mapConfig\img\del.paa'/></t><t align='left'><t size='1'><t shadow= 1 shadowColor='#000000'> Emergency Eject</t><br />
<br />
<t align='center'><t size='1.2'><t shadow= 1 shadowColor='#0000ff'>Have fun and respect other players. Hacking or exploiting will get you banned</t>
<br />
<t align='right'><img size='6' shadow = 0 image='mapConfig\logo.paa'/></t>";

hint parseText format ["<t align='center'>Welcome %2</t><br />%1",_text, name player];
 