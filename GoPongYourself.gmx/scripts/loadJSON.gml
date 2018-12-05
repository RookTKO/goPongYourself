var fileJSON = file_text_open_read("cardInformation.json");
var dataJSON = "";
while (!file_text_eof(fileJSON))
{
    dataJSON += file_text_read_string(fileJSON);
    file_text_readln(fileJSON);
}
file_text_close(fileJSON);
var mapJSON = json_decode(dataJSON);
var listJSON = ds_map_find_value(json_decode(dataJSON), "default");
global.totalCards = ds_list_size(listJSON);
global.cardData = ds_grid_create(global.totalCards,5);
for (var i = 0; i < global.totalCards; i++)
{
    var dataEntry = ds_list_find_value(listJSON, i);
    global.cardData[# i, ID] = dataEntry[? "ID"];
    global.cardData[# i, NAME] = dataEntry[? "NAME"];
    global.cardData[# i, WPOINTS] = dataEntry[? "WPOINTS"];
    global.cardData[# i, DESC] = dataEntry[? "DESC"];
    global.cardData[# i, EFFECT] = dataEntry[? "EFFECT"];
}
