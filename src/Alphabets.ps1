function Get-Alphabets([string]$Name = '*') {
    $Alphabets = @(
        @{ Name = 'A'}
        @{ Name = 'B'}
        @{ Name = 'C'}
        @{ Name = 'D'}
        @{ Name = 'E'}
        @{ Name = 'F'}
        @{ Name = 'G'}
        @{ Name = 'H'}) | ForEach-Object { [PSCustomObject] $_ }
    $Alphabets | Where-Object { $_.Name -like $Name }
}
