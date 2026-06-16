\# Re-entry Verification Procedure



Status: Draft



Purpose:



Provide a repeatable procedure for assessing continuity and orientation during re-entry.



This procedure does not establish continuity.



This procedure establishes the current known operational state.



\---



\## Step 1 - Verify Repository State



Verify repository location.



Verify active branch.



Verify working tree status.



If repository state cannot be verified, classify continuity as Degraded.



\---



\## Step 2 - Verify Bootstrap Source



Verify BOOTSTRAP.md exists.



Verify BOOTSTRAP.sha256 exists.



Verify BOOTSTRAP-MANIFEST.md exists.



If any required artifact is missing, classify continuity as Degraded.



\---



\## Step 3 - Verify Bootstrap Integrity



Generate SHA256 hash of BOOTSTRAP.md.



Compare generated value against BOOTSTRAP.sha256.



If values differ, classify continuity as Degraded until resolved.



\---



\## Step 4 - Verify Bootstrap Version Information



Inspect BOOTSTRAP.md.



Verify version information is present.



Verify commit reference is present.



If version or commit reference cannot be verified, classify continuity as Degraded.



\---



\## Step 5 - Assess Continuity State



Normal:



\* Repository verified.

\* Bootstrap source verified.

\* Bootstrap integrity verified.

\* Version information verified.

\* Source verification controls implemented.



Partial:



\* Repository verified.

\* Bootstrap source verified.

\* Integrity partially verified.

\* One or more verification controls unresolved.



Degraded:



\* Integrity, source, version, or repository state cannot be verified.



Blocked:



\* Required artifacts unavailable.



Unavailable:



\* Assessment cannot be performed.



\---



\## Step 6 - Declare Current State



Disclose:



\* Known context.

\* Unknown context.

\* Continuity classification.

\* Integrity status.

\* Constraints.

\* Next safe move.



Movement should not occur before orientation is established.



