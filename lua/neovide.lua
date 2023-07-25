-- Problems
-- 1. chinese input method can not work normally
--          RIME
if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    -- [ Font ]
    vim.o.guifont = "FiraCode Nerd Font:h14"
    -- [ Line spacing ]
    vim.opt.linespace = 0
    -- [ Scale ]
    vim.g.neovide_scale_factor = 1.0
    -- [ Padding ]
    vim.g.neovide_padding_top = 0
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 0
    vim.g.neovide_padding_left = 0
    -- [ Floating Blur Amount ]
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
    -- [ Transparency ]
    vim.g.neovide_transparency = 0.95
    -- [ Scroll Animation Length ]
    vim.g.neovide_scroll_animation_length = 0.1
    -- [ Hiding the mouse when typing ]
    vim.g.neovide_hide_mouse_when_typing = true
    -- [ Theme ]
    vim.g.neovide_theme = 'auto'
    -- [ Refresh Rate ]
    vim.g.neovide_refresh_rate = 144
    -- [ Idle Refresh Rate ]
    vim.g.neovide_refresh_rate_idle = 5
    -- [ No Idle ]
    vim.g.neovide_no_idle = true
    -- [ Confirm Quit ]
    vim.g.neovide_confirm_quit = false
    -- [ Fullscreen ]
    vim.g.neovide_fullscreen = false
    -- [ Remember Previous Windows size ]
    vim.g.neovide_remember_window_size = true
    -- [ 显示帧率等内容]
    vim.g.neovide_profiler = false
    -- [ IME ]
    -- vim.g.neovide_input_ime = true
    -- [ Touch Deadzone ]
    vim.g.neovide_touch_deadzone = 6.0
    -- [ Touch Drag Timeout ]
    vim.g.neovide_touch_drag_timeout = 0.17
    -- [ Cursor Setting ]
    vim.g.neovide_cursor_animation_length = 0.17
    vim.g.neovide_cursor_trail_size = 0.3
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_cursor_unfocused_outline_width = 0.1
    vim.g.neovide_cursor_vfx_mode = "torpedo"
    vim.g.neovide_cursor_vfx_opacity = 200.0
    vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
    vim.g.neovide_cursor_vfx_particle_density = 9.0
    vim.g.neovide_cursor_vfx_particle_speed = 10.0
end
