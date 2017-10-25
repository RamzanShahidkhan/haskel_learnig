differetnt(blue, green).
differetnt(green, red).
differetnt(red, green).
differetnt(blue, red).
differetnt(red, blue).
differetnt(green, blue).

pleaseColor(Kashmir, Sindh, Punjab, Balochistan, KPK):-
	differetnt(Kashmir, KPK),
	differetnt(Kashmir, Punjab),
	differetnt(Punjab, KPK),
	differetnt(Punjab, Balochistan),
	differetnt(Punjab, Sindh),
	differetnt(Sindh, Balochistan),
	differetnt(Balochistan, KPK).


