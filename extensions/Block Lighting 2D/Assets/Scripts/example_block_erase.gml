/// block_erase(x, y)
// Erases the block at cell (x, y). (Used with a block surface update.)
// This is just part of the example.

draw_set_alpha(0);
draw_rectangle(argument0 * block_width, argument1 * block_height, (argument0 + 1) * block_width - 1, (argument1 + 1) * block_height - 1, false);
draw_set_alpha(1);
