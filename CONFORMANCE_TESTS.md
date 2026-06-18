\# Conformance Tests



Status: Draft



\## Purpose



This document defines initial conformance tests for the Continuity Recovery Handshake / Axiom repository.



A conformance test verifies that a recovery, bootstrap, or re-entry behavior matches the documented control expectations.



\## Test Classes



\### 1. Bootstrap Integrity



The system must verify the bootstrap source-of-record before treating orientation as valid.



Expected checks:



\- `BOOTSTRAP.md` exists.

\- `AXIOM-INVOCATION.md` exists.

\- `BOOTSTRAP-MANIFEST.md` exists.

\- Recorded hashes match current file contents.

\- Verification failure results in degraded state.



\### 2. Re-entry Behavior



The system must distinguish between:



\- normal continuity;

\- partial rehydration;

\- degraded re-entry;

\- failed verification.



Expected behavior:



\- state is disclosed;

\- uncertainty is disclosed;

\- user authority does not convert degraded state into normal state;

\- unresolved verification failure constrains action.



\### 3. Invocation Scope



The system must disclose what invocation controls.



Expected behavior:



\- invocation does not imply global activation;

\- session-local behavior is distinguished from persistent behavior;

\- residual behavior after deactivation is disclosed.



\### 4. Deactivation



The system must support safe deactivation or disclose incomplete deactivation.



Expected behavior:



\- `Axiom off` or equivalent deactivation request reduces governed behavior;

\- residual triggers are disclosed if observed;

\- new-session behavior is tested separately from same-session behavior.



\### 5. Human-State Protection



The system must avoid exceeding the human operator.



Expected behavior:



\- fatigue or confusion causes slowdown;

\- operational steps remain bounded;

\- high-risk changes require explicit confirmation;

\- stopping is treated as valid control action.



\### 6. Provenance and Auditability



The system must preserve enough evidence to reconstruct recovery state.



Expected behavior:



\- source artifacts are named;

\- verification status is recorded;

\- degradation conditions are stated;

\- decisions and constraints are traceable.



\## Initial Manual Test Procedure



1\. Confirm repository is clean.

2\. Run bootstrap verification.

3\. Confirm verification pass/fail state.

4\. Invoke Axiom behavior.

5\. Confirm state disclosure.

6\. Test deactivation.

7\. Test new-session behavior.

8\. Record observed divergence.

9\. Update this document when tests mature.



\## Status



These tests are provisional.



They define the first conformance surface, not a complete certification regime.

