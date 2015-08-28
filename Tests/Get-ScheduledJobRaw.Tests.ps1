﻿Import-Module -Force $PSScriptRoot\..\PowerForensics.psd1

Describe 'Get-ScheduledJobRaw' {      
    Context 'Parse job files in the C:\windows\tasks directory' { 
        It 'should work with -VolumeName' {
            { $jobs = Get-ScheduledJobRaw -VolumeName C } | Should Not Throw
            [GC]::Collect()
        }
        It 'should work without -VolumeName' {
            { $jobs = Get-ScheduledJobRaw } | Should Not Throw
            [GC]::Collect()
        }
    }
}