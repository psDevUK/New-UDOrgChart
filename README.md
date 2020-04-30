# New-UDOrgChart
Bringing the Google OrgChart to UD from https://github.com/RakanNimer/react-google-charts

## Hello Folks
Brining you another new component for the mighty **UniversalDashboard** this is an implementation of the Google OrgChart but now
ready to use in **UniversalDashboard**

## Parameters
* **-Data** Ok this is a **3 dimensional multi array** that **needs to have a header** else the chart won't render (see example)
* **-Height** Sets the **height** of the component this is a **string value**, an example of using this is in the demo below
* **-Width** Sets the **width** of the component this is a **string value**, an example of using this is in the demo below

## Demostration

I am blessed to be married with 4 kids (all girls) and some animals for good measure.  So what better way to demonstrate this 
component than with my family orgchart

```
Import-Module -Name UniversalDashboard.Community -RequiredVersion 2.8.1
Import-Module "C:\UD\GooglePieChart\OrgChart\src\output\UniversalDashboard.UDOrgChart\UniversalDashboard.UDOrgChart.psd1"
Get-UDDashboard | Stop-UDDashboard
Start-UDDashboard -Port 10005 -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Content {
        $MultiArray = @()
        # MAKE SURE YOU GIVE THE ARRAY A HEADING THE THIRD HEADING IS A TOOLTIP
        $MultiArray += , @('Name', 'Position', 'ToolTip' )
        # THIS IS THE PERSON APPEARING AT THE TOP
        $MultiArray += , @('Mum', '', 'The Boss')
        # NEST THE PEOPLE UNDERNEATH BY RELATING THEM TO THE MASTER IN THE SECOND ENTRY ON THE ARRAY
        $MultiArray += , @('Dad', 'Mum', 'Second-In-Charge')
        $MultiArray += , @('Dad', 'Mum', '')
        #NOW ADDING MY CHILDREN AND ANIMALS ACCORDING TO WHO OWNS THEM
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

```

## Round-up
I hope that you will see the great potentials of using this, it does also support HTML, but I haven't got round to testing that
just yet. It works in UD, and the parameters passed work, so that's a pass in my book. 
