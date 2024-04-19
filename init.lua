local theme_inv = [[
    style_type[list;size=1.16,1.16;spacing=0,0] 
		list[current_player;main;0,5.2;8,1;]
		list[current_player;main;0,6.35;8,3;8]
	]]

local short_theme_inv = [[
    style_type[list;size=1.16,1.16;spacing=0,0] 
		list[current_player;main;0,5.2;8,1;]
	]]

function sfinv.make_formspec(player, context, content, show_inv, size)
  local pageName = sfinv.pages_unordered[context.nav_idx].name
  local ishortPage = pageName == 'creative:all' or pageName == 'creative:nodes' or pageName == 'creative:tools' or pageName == 'creative:craftitems'

	local tmp = {
		size or (ishortPage and "size[8,6]" or "size[8,9.1]"),
		sfinv.get_nav_fs(player, context, context.nav_titles, context.nav_idx),
		show_inv and (ishortPage and short_theme_inv or theme_inv) or "",
		content,
	}
	return table.concat(tmp, "")
end
