/// block_redraw(x, y)
// Redraws the block at cell (x, y). (Used with a block surface update.)
// This is just part of the example.

if (block_grid[# argument0, argument1])
    draw_sprite(spr_example_block, example_block_get_image_index(argument0, argument1), argument0 * block_width, argument1 * block_height);
