# vim-default-improved

Vim `plugin/defaults.vim` file improved.

# Installation

If you are using [vim-plug], just add the following line to your `~/.vimrc` file:

```viml
    Plug 'StarryLeo/vim-default-improved'
```

then restart vim and run `:PlugInstall`.

# Options

| Option | Description | Default |
| ------ | ----------- | ------- |
| g:vim_default_improved_key_mapping | Whole key (re)mappings | 1 |
| g:vim_default_improved_basic_key_mapping | Basic key (re)mappings | 1 |
| g:vim_default_improved_fold_key_mapping | Fold key mappings | 1 |
| g:vim_default_improved_cmdline_key_mapping | CmdLine key mappings | 1 |
| g:vim_default_improved_esc_key_mapping | Esc key mappings | 1 |
| g:vim_default_improved_bracket_key_mapping | Bracket key mappings | 1 |
| g:vim_default_improved_window_key_mapping | Window key mappings | 1 |
| g:vim_default_improved_tabpage_key_mapping | TabPage key mappings | 1 |
| g:vim_default_improved_backup_on | Set Backup | 0 |
| g:vim_default_improved_consolidated_directory | Backup/views/swap/undo dirs | $HOME/.vim |

[vim-plug]: https://github.com/junegunn/vim-plug
