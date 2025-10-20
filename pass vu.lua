
-- Pass Vu
gg.clearResults();gg.clearList();
gg.searchNumber("-7995824390300544013", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0);
gg.searchPointer(0);
gg.searchPointer(0);

local t = gg.getResults(gg.getResultsCount());gg.clearResults();
gg.addListItems(t);

local t = gg.getListItems();gg.clearList();

for i, v in ipairs(t) do
	v.address = v.address + 0x8;
	v.flags = gg.TYPE_DWORD;
end;
gg.addListItems(t);gg.loadResults(t);gg.clearList();

gg.refineNumber("83", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

local t = gg.getResults(1);gg.clearResults();
gg.addListItems(t);

for i, v in ipairs(t) do
	v.address = v.address - 0x8;
	v.flags = gg.TYPE_DWORD;
end;
--pointer pas vu

local a = gg.getListItems();

 
for i, v in ipairs(t) do
	v.address = v.address + 0x1A8;
	v.value   = "-1";
	v.flags = gg.TYPE_QWORD;
end;
--- reward vu
gg.addListItems(t);
gg.setValues(t);

local a = gg.getListItems();

for i, v in ipairs(t) do
	v.address = v.address + 0x8;
	v.flags = gg.TYPE_QWORD;
	v.value = "0";
	v.freeze = true;
	v.freezeType = gg.FREEZE_NORMAL;
end;

gg.addListItems(t);
gg.setValues(t);

local b = gg.getListItems();

for i, v in ipairs(t) do
	v.address = v.address + 0x8;
	v.flags = gg.TYPE_QWORD;
	v.value = "0";
	v.freeze = true;
	v.freezeType = gg.FREEZE_NORMAL;
end;

gg.addListItems(t);
gg.setValues(t);

local c = gg.getListItems();

for i, v in ipairs(t) do
	v.address = v.address + 0x8;
	v.flags = gg.TYPE_QWORD;
	v.value = "0";
	v.freeze = true;
	v.freezeType = gg.FREEZE_NORMAL;
end;

gg.addListItems(t);
gg.setValues(t);

