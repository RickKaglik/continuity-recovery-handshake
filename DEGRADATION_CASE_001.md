\# Degradation Case 001



Title: Transient PowerShell Startup Failure



Date: 2026-06-18



Status: Resolved



\## Initial Observation



A Windows Terminal PowerShell tab failed during startup.



Observed message:



"The shell cannot be started.

A failure occurred during initialization:

The type initializer for 'System.Net.ServicePointManager' threw an exception."



\## Initial Risk Assessment



Predicted failure mode:



\- PowerShell unavailable

\- Verification tooling unavailable

\- Repository operations impaired



Confidence: Low



Reason:



The observed error did not establish whether the failure affected:



\- PowerShell itself

\- Windows Terminal

\- .NET initialization

\- startup configuration

\- user profile configuration



\## Investigation



Successful tests:



\### PowerShell Version



powershell -Command "$PSVersionTable"



Result:



PASS



\### ServicePointManager Security Protocol



powershell -Command "\[System.Net.ServicePointManager]::SecurityProtocol"



Result:



PASS



Returned:



SystemDefault



\### ServicePointManager Type Load



powershell -Command "\[System.Net.ServicePointManager]"



Result:



PASS



\### Bootstrap Verification



powershell -ExecutionPolicy Bypass -File .\\verify-bootstrap.ps1



Result:



PASS



BOOTSTRAP-CRITICAL VERIFICATION PASSED



\### Interactive PowerShell Launch



start powershell.exe



Result:



PASS



Interactive prompt obtained.



\### Subsequent Interactive Launch



Windows Terminal PowerShell profile opened successfully.



Result:



PASS



\## Evidence Summary



Verified operational:



\- PowerShell engine

\- Interactive PowerShell

\- Script execution

\- Bootstrap verification

\- Git operations

\- Repository operations



No persistent failure could be reproduced.



\## Final Classification



Initial classification:



PowerShell broken



Final classification:



Transient startup-path incident



Affected scope:



\- One startup attempt



Not affected:



\- PowerShell engine

\- Script execution

\- Repository operations

\- Verification controls



\## Recovery Outcome



System returned to normal operation.



No corrective action required.



\## CRH Notes



This case demonstrates the difference between:



Observed symptom:



"PowerShell failed to start."



and



Verified condition:



"One startup path failed while PowerShell remained operational."



The investigation reduced uncertainty and narrowed the fault domain through evidence collection.



\## Lessons Learned



\- Initial symptoms may overstate impact.

\- Verification should precede diagnosis.

\- Failure domains should be narrowed using observable evidence.

\- Recovery classification should be updated as evidence changes.

