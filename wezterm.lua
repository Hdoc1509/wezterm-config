local merge = require('utils').merge
local colors = require('colors')
local cursor = require('cursor')
local font = require('font')
local gui = require('gui')
local mouse_binds = require('mouse_binds')
local key_binds = require('key_binds')
local shell = require('shell')

return merge(colors, cursor, font, gui, mouse_binds, key_binds, shell)

