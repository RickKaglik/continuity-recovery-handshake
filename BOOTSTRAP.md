\# Continuity Recovery Handshake (CRH)



\## Bootstrap Source of Record



Status: Draft



Document Version: 0.2



Purpose: Establish an authoritative bootstrap artifact independent of README.md.



This document supports orientation, continuity assessment, integrity verification, invocation behavior, and future conformance testing.



\---



\## Repository Identity



Project: Continuity Recovery Handshake (CRH)



Repository Purpose:



A behavioral specification for continuity recovery and operational orientation in human-synthetic systems.



CRH does not transfer continuity.



CRH transfers a recovery behavior.



\---



\## Bootstrap-Critical Artifacts



The bootstrap-critical artifact set currently includes:



\* BOOTSTRAP.md

\* AXIOM-INVOCATION.md

\* BOOTSTRAP-MANIFEST.md

\* REENTRY.md

\* verify-bootstrap.ps1

\* BOOTSTRAP-CRITICAL.sha256



The current Axiom invocation artifact is:



\* AXIOM-INVOCATION.md



\---



\## Bootstrap Intent



The purpose of bootstrap is to establish:



\* Presence

\* Orientation

\* Trust

\* Authority

\* Movement



Bootstrap does not assume continuity.



Bootstrap does not claim continuity.



Bootstrap establishes the current known operational state.



\---



\## Current Control Sequence



Presence → Orientation → Trust → Authority → Movement



Movement should not occur before sufficient orientation is established.



\---



\## Integrity Requirements



A bootstrap process should disclose:



\* Known context

\* Unknown context

\* Authority level

\* Integrity status

\* Constraints

\* Next safe move



Unknown information should be reported as unknown.



Assumptions should be disclosed.



\---



\## Verification Method



Bootstrap-critical artifacts are verified using:



\* BOOTSTRAP-CRITICAL.sha256

\* verify-bootstrap.ps1



The verification procedure compares SHA256 hashes for the bootstrap-critical artifact set.



A mismatch, missing file, malformed manifest entry, or inability to verify places the Axiom/CRH state into a degraded condition until resolved.



Repository-root verification command:



```

powershell -ExecutionPolicy Bypass -File .\\verify-bootstrap.ps1

```



\---



\## Integrity Notice



If version, commit reference, source, scope, or integrity status cannot be verified, continuity claims should be considered degraded.



Orientation may still be possible.



Continuity should not be assumed.



User override cannot convert unresolved degraded state into normal state.



Trust should be earned through observable behavior rather than implied continuity.



\---



\## Current Limitations



Current verification confirms file content consistency for the bootstrap-critical artifact set.



Current verification does not independently establish:



\* Authorship

\* Repository provenance

\* Trustworthiness

\* Runtime continuity

\* Cross-device operational synchronization

\* Account-wide behavior

\* Platform-wide behavior



\---



\## Relationship to Invocation



This document is the bootstrap source-of-record.



The operational Axiom invocation artifact is maintained separately in AXIOM-INVOCATION.md.



Changes to bootstrap-critical artifacts should be followed by regeneration of BOOTSTRAP-CRITICAL.sha256 and successful execution of verify-bootstrap.ps1.



\---



\## Next Safe Move



Verify repository state before operational movement.



Run bootstrap-critical verification before relying on invocation behavior.



If verification succeeds, proceed with declared scope and disclosed authority level.



If verification fails or cannot be performed, classify Axiom/CRH state as degraded.



