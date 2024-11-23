local lush = require("lush")
local base = require("zenbones")

-- Create some specs
local specs = lush.parse(function()
	return {
		String({ #cb5, gui = "italic" }), -- setting gui to "italic"
	}
end)
-- Apply specs using lush tool-chain
lush.apply(lush.compile(specs))
