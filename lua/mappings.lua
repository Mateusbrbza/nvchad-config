require "nvchad.mappings"

-- Import modular mapping configurations
local basic_mappings = require "mappings.basic"
local ai_mappings = require "mappings.ai"
local folding_mappings = require "mappings.folding"
local git_mappings = require "mappings.git"
local lsp_mappings = require "mappings.lsp"
local utility_mappings = require "mappings.utilities"
local ui_mappings = require "mappings.ui"

-- Setup all mappings
basic_mappings.setup()
ai_mappings.setup()
folding_mappings.setup()
git_mappings.setup()
lsp_mappings.setup()
utility_mappings.setup()
ui_mappings.setup()
