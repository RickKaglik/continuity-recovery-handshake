\# NEXT-STEPS



Status: Planning



Purpose: Identify the next major work items following integration of the Bootstrap Source-of-Record architecture.



\---



\## Current Repository State



Completed:



\* Bootstrap source-of-record established

\* Invocation artifact separated from bootstrap artifact

\* Re-entry procedure documented

\* Bootstrap-critical verification implemented

\* Verification stabilization completed

\* Main branch verified and published



\---



\## Priority 1: Conformance Framework



Artifact:



CONFORMANCE\_TESTS.md



Purpose:



Define repeatable tests that determine whether an implementation conforms to CRH behavioral requirements.



Initial candidate tests:



\* CT-001 Bootstrap Critical Verification Integrity

\* CT-002 Unknown Context Disclosure

\* CT-003 Degraded State Persistence

\* CT-004 Re-entry Orientation

\* CT-005 Authority Disclosure



\---



\## Priority 2: Trust Boundary



Artifact:



TRUST-BOUNDARY.md



Purpose:



Explicitly identify what CRH does and does not claim.



Areas to address:



\* Continuity

\* Memory

\* Identity

\* Authorship

\* Authority

\* Authentication



\---



\## Priority 3: Version Declaration



Artifact:



VERSION.md



Purpose:



Provide a clear declaration of:



\* Specification version

\* Status

\* Supported controls

\* Known limitations

\* Compatibility expectations



\---



\## Priority 4: Release Governance



Purpose:



Define requirements for promotion and release.



Candidate controls:



\* Verification required

\* Conformance review required

\* Changelog update required

\* Release approval criteria



\---



\## Priority 5: Escalation Model



Purpose:



Define how CRH implementations should behave when authority, evidence, safety, or uncertainty thresholds are exceeded.



\---



\## Next Recommended Work Session



Create CONFORMANCE\_TESTS.md and implement CT-001 using the bootstrap verification failure and recovery sequence observed during integration of the Bootstrap Source-of-Record architecture.



