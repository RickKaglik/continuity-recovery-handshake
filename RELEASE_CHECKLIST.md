\# Release Checklist



Status: Draft



\## Purpose



This document defines the minimum checks required before a CRH/Axiom repository release is considered acceptable.



\## Release Gates



\### 1. Repository State



\- Working tree is clean.

\- Local branch is up to date with remote.

\- Release commit is identified.

\- No untracked operational artifacts are present.



\### 2. Bootstrap Integrity



\- Bootstrap-critical verification passes.

\- Critical hashes match the manifest.

\- Verification failure behavior is documented.

\- Bootstrap source-of-record is identifiable.



\### 3. Re-entry Readiness



\- Re-entry procedure exists.

\- Invocation procedure exists.

\- Degraded-state behavior is documented.

\- User authority boundaries are documented.



\### 4. Conformance



\- Conformance test framework exists.

\- Manual conformance procedure is documented.

\- Known gaps are identified.

\- Future executable tests are planned.



\### 5. Governance



\- Architecture document exists.

\- Changelog exists.

\- Next steps are documented.

\- Release limitations are stated.



\## Initial Release Classification



This repository may be treated as an initial orientation/governance foundation only if all release gates above are satisfied.



It must not be represented as a complete certification system, autonomous continuity system, or production-grade safety framework.



\## Open Release Gaps



\- Executable conformance tests are not yet implemented.

\- PowerShell interactive startup issue observed on workstation.

\- Deactivation behavior requires further live-session testing.

\- Multi-device and multi-user re-entry behavior remains provisional.



\## Release Decision



Release status: Not yet declared.



Release may be declared only after verification, review, and explicit operator decision.

