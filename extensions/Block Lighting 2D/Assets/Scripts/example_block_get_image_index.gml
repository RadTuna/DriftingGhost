/// block_get_image_index(x, y)
// Finds the correct image index of the block at cell (x, y) to align the edges of the blocks together.
// This is just part of the example.

var block, block_right, block_above, block_left, block_below;

block = block_grid[# argument0, argument1];
if (argument0 < blocks_horizontally - 1) block_right = block_grid[# argument0 + 1, argument1]; else block_right = 1;
if (argument1 > 0) block_above = block_grid[# argument0, argument1 - 1]; else block_above = 1;
if (argument0 > 0) block_left = block_grid[# argument0 - 1, argument1]; else block_left = 1;
if (argument1 < blocks_vertically - 1) block_below = block_grid[# argument0, argument1 + 1]; else block_below = 1;

if (block_right) {
    if (block_above) {
        if (block_left) {
            if (block_below) return 13;
            return 9;
        }
        if (block_below) return 12;
        return 5;
    }
    if (block_left) {
        if (block_below) return 11;
        return 14;
    }
    if (block_below) return 8;
    return 1;
}
if (block_above) {
    if (block_left) {
        if (block_below) return 10;
        return 6;
    }
    if (block_below) return 15;
    return 2;
}
if (block_left) {
    if (block_below) return 7;
    return 3;
}
if (block_below) return 4;
return 0;
