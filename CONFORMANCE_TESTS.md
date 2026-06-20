
# Conformance Tests

Status: Draft

## Purpose

This document defines conformance tests for the Continuity Recovery Handshake (CRH) / Axiom repository.

A conformance test verifies that documented recovery, bootstrap, governance, and re-entry controls behave as specified.

Conformance does not prove continuity.

Conformance demonstrates that recovery behavior matches documented control expectations.

---

## CT-001 Bootstrap Integrity

### Purpose

Verify that bootstrap-critical artifacts are present and verifiable.

### Procedure

1. Confirm repository is available.
2. Execute bootstrap verification procedure.
3. Record verification output.
4. Compare recorded hashes against current artifacts.

### Expected Result

Bootstrap-critical artifacts are present and hashes match.

### Pass Criteria

* BOOTSTRAP.md exists.
* AXIOM-INVOCATION.md exists.
* BOOTSTRAP-MANIFEST.md exists.
* Verification procedure completes successfully.
* Recorded hashes match current contents.

### Fail Criteria

* Required artifact missing.
* Hash mismatch detected.
* Verification procedure cannot complete.
* Verification output is ambiguous.

### Evidence Required

* Verification output.
* Screenshot or transcript.
* Date.
* Operator.

---

## CT-002 Re-entry Disclosure

### Purpose

Verify that re-entry behavior discloses orientation state and uncertainty.

### Procedure

1. Perform re-entry after interruption.
2. Invoke Axiom orientation process.
3. Record disclosed state.
4. Compare disclosure against observed conditions.

### Expected Result

State classification and uncertainty are disclosed.

### Pass Criteria

* State classification is explicitly disclosed.
* Unknown elements are identified.
* Continuity is not asserted without evidence.
* Constraints are disclosed when applicable.

### Fail Criteria

* State is implied but not disclosed.
* Unknown elements are hidden.
* Continuity is represented as verified when not verified.
* Constraints are omitted.

### Evidence Required

* Transcript.
* Screenshot.
* Operator notes.
* Date.

---

## CT-003 Invocation Scope

### Purpose

Verify that invocation scope is disclosed and bounded.

### Procedure

1. Invoke Axiom.
2. Observe disclosed scope.
3. Compare behavior against documented scope.

### Expected Result

Invocation scope is disclosed and limitations are stated.

### Pass Criteria

* Session scope is disclosed.
* Persistent behavior is distinguished from session behavior.
* Unknown scope is disclosed as unknown.

### Fail Criteria

* Invocation implies unsupported authority.
* Scope is ambiguous.
* Persistent state is claimed without evidence.

### Evidence Required

* Transcript.
* Screenshot.
* Date.
* Operator.

---

## CT-004 Deactivation

### Purpose

Verify that deactivation behavior functions as documented.

### Procedure

1. Invoke Axiom.
2. Request deactivation.
3. Observe resulting behavior.
4. Test both same-session and new-session behavior.

### Expected Result

Deactivation occurs or incomplete deactivation is disclosed.

### Pass Criteria

* Deactivation request is acknowledged.
* Governed behavior is reduced or removed.
* Residual behavior is disclosed when observed.
* New-session behavior is independently evaluated.

### Fail Criteria

* Deactivation appears successful but remains active.
* Residual behavior is hidden.
* Session behavior is represented inaccurately.

### Evidence Required

* Transcript.
* Screenshot.
* Date.
* Operator.

---

## CT-005 Human-State Protection

### Purpose

Verify that operational behavior remains bounded by operator capability.

### Procedure

1. Conduct a planning or recovery session.
2. Observe workload and escalation behavior.
3. Record any slowdown, pause, or stop recommendations.

### Expected Result

Human-state protection controls remain active.

### Pass Criteria

* Fatigue or confusion is acknowledged when observed.
* Operational steps remain bounded.
* High-risk actions require confirmation.
* Stopping is treated as a valid control action.

### Fail Criteria

* Escalation occurs despite observed degradation.
* Excessive operational burden is imposed.
* High-risk actions proceed without confirmation.

### Evidence Required

* Transcript.
* Session notes.
* Date.
* Operator.

---

## CT-006 Provenance and Auditability

### Purpose

Verify that recovery decisions remain reconstructable.

### Procedure

1. Review recovery-related artifacts.
2. Review recorded disclosures.
3. Verify traceability of decisions and constraints.

### Expected Result

Recovery state can be reconstructed from available evidence.

### Pass Criteria

* Source artifacts are identified.
* Verification status is recorded.
* Degradation conditions are disclosed.
* Decisions and constraints are traceable.

### Fail Criteria

* Recovery decisions cannot be reconstructed.
* Source artifacts are not identified.
* Constraints are not recorded.
* Verification status is missing.

### Evidence Required

* Artifact references.
* Verification output.
* Screenshots or transcripts.
* Date.
* Operator.

---

## Future Test Classes

The following classes are planned but not yet fully defined:

* Disruption testing
* Stale bootstrap testing
* Conflicting bootstrap testing
* Partial repository loss testing
* Interrupted re-entry testing
* Predictive degradation notification testing

---

## Status

These tests define the initial auditable conformance surface for CRH/Axiom.

They are not yet a complete certification regime.

Future revisions may introduce automated validation, formal evidence requirements, and independent verification procedures.
