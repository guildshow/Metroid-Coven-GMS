// Use until we can optimize this script...
for (layer = argument0; layer >= argument0-2; layer -= 1)
    { tile_layer_hide(layer); }
exit;
// ---
var tile, // Tile we check.
    ix,iy, // X and Y location of tile.
    layer; // Layer tile is on that we check.
// If using different sizes of tile, change the 16s into whatever size tiles you use.
// I use 16x16 tiles in my case.
for (layer = argument0; layer >= argument0-2; layer -= 1) // Check the three layers associated with the hidden area.
for (ix = 0; ix <= room_width; ix += 16) // Locate each tile on a 16x grid.
for (iy = 0; iy <= room_height; iy += 16)
{
    tile = tile_layer_find(layer,ix,iy); // Find the tile.
    if (tile != -1) tile_set_alpha(tile,argument1); // Set the alpha.
}
