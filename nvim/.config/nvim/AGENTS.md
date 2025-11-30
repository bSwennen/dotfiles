# Neovim Configuration Agent Guidelines

## Build/Lint/Test Commands
- **Format**: `stylua --check .` (checks formatting) or `stylua .` (formats)
- **Health check**: `:checkhealth kickstart` (validates dependencies)
- **Test single plugin**: Restart Neovim after changes to `lua/custom/plugins/`

## Code Style Guidelines
- **Indentation**: 2 spaces, 160-character line limit
- **Strings**: Single quotes preferred (`'string'`)
- **Comments**: Extensive `--` comments explaining configuration choices
- **Diagnostics**: Use `---@diagnostic disable: ...` for intentional suppressions
- **Keymaps**: Always include `{ desc = '...' }` tables for which-key integration

## Configuration Organization
- **Main config**: Keep `init.lua` as the primary configuration file
- **Custom plugins**: Add to `lua/custom/plugins/init.lua` using `return { ... }`
- **Optional modules**: Use `lua/kickstart/plugins/` for example configurations
- **Health checks**: Add external tool dependencies to `lua/kickstart/health.lua`

## Plugin Management
- Use **lazy.nvim** for all plugin management
- Follow lazy loading patterns (event, cmd, ft, keys)
- Integrate with Mason/LSP ecosystem for language tools
- Ensure plugins work with Neovim 0.9.4+

## Keymap Conventions
- Leader key is space (`<leader>`)
- Use descriptive names: `[S]earch [F]iles`, `[G]oto [D]efinition`
- LSP keymaps should be buffer-local with `LSP: ` prefix
- Navigation: `[d`/`]d` for diagnostics, `<C-hjkl>` for windows

## Error Handling
- Use `pcall()` for optional plugin features
- Add diagnostic disable comments for intentional suppressions
- Test with `:checkhealth` after adding external dependencies