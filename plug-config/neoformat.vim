let g:neoformat_enabled_javascript = ["prettier"]
autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
