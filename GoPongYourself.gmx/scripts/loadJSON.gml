var fileJSON = file_text_open_read("cardInformation.json");
var dataJSON = "";
while (!file_text_eof(fileJSON))
{
    dataJSON += file_text_read_string(fileJSON);
    file_text_readln(fileJSON);
}
file_text_close(dataJSON);
var mapJSON = json_decode(dataJSON);
var listJSON = ds_map_find_value(mapJSON, "default");
global.totalCards = ds_list_size(listJSON);
global.cardData = ds_grid_create(global.totalCards,6);
for (var i = 0; i < global.totalCards; i++)
{
    var theEntry = ds_list_find_value(listJSON, i);
    global.cardData[# i, ID] = theEntry[? "ID"];
    global.cardData[# i, NAME] = theEntry[? "NAME"];
    global.cardData[# i, WPOINTS] = theEntry[? "WPOINTS"];
    global.cardData[# i, DESC] = theEntry[? "DESC"];
    global.cardData[# i, ATK] = theEntry[? "EFFECT"];
    global.cardData[# i, IMAGE] = theEntry[? "TYPE"];
}
