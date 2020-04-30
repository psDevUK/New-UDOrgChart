Import-Module -Name UniversalDashboard.Community -RequiredVersion 2.8.1
Import-Module "C:\UD\GooglePieChart\OrgChart\src\output\UniversalDashboard.UDOrgChart\UniversalDashboard.UDOrgChart.psd1"
Get-UDDashboard | Stop-UDDashboard
Start-UDDashboard -Port 10005 -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Content {
        $MultiArray = @()
        $MultiArray += , @('Name', 'Position', 'ToolTip' )
        $MultiArray += , @('Mum', '', 'The Boss')
        $MultiArray += , @('Dad', 'Mum', 'Second-In-Charge')
        $MultiArray += , @('Dad', 'Mum', '')
        $MultiArray += , @('Laila-Belle', 'Dad', 'Eldest Child')
        $MultiArray += , @('Pixie', 'Dad', 'Second Eldest')
        $MultiArray += , @('Zelda', 'Dad', 'Third Eldest')
        $MultiArray += , @('Aurora', 'Dad', 'Youngest')
        $MultiArray += , @('Penny', 'Laila-Belle', 'Hamster')
        $MultiArray += , @('Princess', 'Pixie', 'Youngest cat')
        $MultiArray += , @('Trumpet', 'Mum', 'Cat with attitude')
        $MultiArray += , @('Simba', 'Dad', 'My boy dog')
        $MultiArray += , @('Laurie', 'Mum', 'girl dog')
        New-UDOrgChart -Id "ORGCHART" -data @($MultiArray) -Width "500px" -Height "500px"
    }
)
