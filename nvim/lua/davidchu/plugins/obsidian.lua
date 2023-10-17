-- import osidian plugin safely
local setup, obsidian= pcall(require, "obsidian")
if not setup then
	return
end


obsidian.setup({
    dir = '~/obsidian/david-obsidian',

    mappings = {
        ["gf"] = {
            action = function()
                return obsidian.util.gf_passthrough()
            end,
            opts = { noremap = false , expr = true, buffer = true },
        },
    },


})
