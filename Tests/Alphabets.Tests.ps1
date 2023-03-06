BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}
Describe "Getting Alphabets" {
    Context "Listing 8 Aplhabets"{
        It "Test:1 Returns expected output" {
            $first8Aplhabets = Get-Alphabets
            $first8Aplhabets.count | Should -Be 8
        }
        It 'Test 2: C is the third alphabet in english' {
            $first8Aplhabets = Get-Alphabets
            $first8Aplhabets[2].Name | Should -Be 'C'
        }
    }
}
#To excute the above test case run the below command: 
#invoke-pester -output Detailed 'C:\Users\SNayakula\OneDrive - Genzeon Corporation\Documents\PesterTests\Alphabets\Alphabets.Tests.ps1'
