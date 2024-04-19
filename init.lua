
    -- image[0,5.2;1,1;gui_hb_bg.png]
		-- image[1,5.2;1,1;gui_hb_bg.png]
		-- image[2,5.2;1,1;gui_hb_bg.png]
		-- image[3,5.2;1,1;gui_hb_bg.png]
		-- image[4,5.2;1,1;gui_hb_bg.png]
		-- image[5,5.2;1,1;gui_hb_bg.png]
		-- image[6,5.2;1,1;gui_hb_bg.png]
		-- image[7,5.2;1,1;gui_hb_bg.png]
local theme_inv = [[
    style_type[list;size=1.16,1.16;spacing=0,0] 
		list[current_player;main;0,5.2;8,1;]
	]]
		-- list[current_player;main;0,6.35;8,3;8]

function sfinv.make_formspec(player, context, content, show_inv, size)
	local tmp = {
		-- size or "size[8,9.1]",
		size or "size[8,6]",
		sfinv.get_nav_fs(player, context, context.nav_titles, context.nav_idx),
		show_inv and theme_inv or "",
		content,
	}
	return table.concat(tmp, "")
end
