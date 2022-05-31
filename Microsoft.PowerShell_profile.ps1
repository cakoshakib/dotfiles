oh-my-posh init pwsh --config C:\Users\cakos\scoop\apps\oh-my-posh\current\themes\pure.omp.json |Invoke-Expression

$nvim = 'C:\Users\cakos\AppData\Local\nvim\init.vim'
function code_folder { set-location "C:\Users\cakos\Code" }
new-alias coding code_folder

Import-Module Terminal-Icons

new-alias vim nvim
new-alias ll ls
new-alias grep findstr

function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
