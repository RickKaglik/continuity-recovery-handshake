# NEXT-STEPS

Status: Post-CRH-0.1 Planning

Purpose: Identify the remaining work following the CRH-0.1 governance baseline and the completed Save State implementation/testing work.

---

## Current Repository State

The following foundational controls and documentation are complete:

* Bootstrap source-of-record established
* Invocation artifact separated from bootstrap artifact
* Re-entry procedure documented
* Bootstrap-critical verification implemented
* Main branch verified and published
* Initial conformance framework created
* Degradation test framework created
* Release checklist created
* CRH-0.1 release notes created
* CRH-0.1 release tag created
* Initial degradation case study captured
* Trust boundary documented
* Version declaration documented
* Trust model documented
* State transition rules documented
* Observable verification documented
* Save State semantics documented
* Save State retrieval and assessment separated
* Re-entry procedure updated to retrieve and assess Save State before orientation
* Cross-channel continuity boundaries documented
* Cross-device testing procedure documented
* Environment setup and introduction boundaries documented

---

## Recently Demonstrated

### Save State - Cross-Device Processing

A preliminary cross-device test was completed on 2026-09-30.

The receiving tablet successfully:

1. retrieved the latest applicable Save State;
2. assessed the recovered context;
3. incorporated the recovered context before orientation.

The test also demonstrated the intended separation between Save State recovery and automatic continuity:

* recovered context was available;
* repository/bootstrap state remained independently unverified;
* continuity was not assumed.

This is evidence of successful preliminary Save State processing.

It is not proof of full cross-device continuity.

---

# Remaining Parked Work

## Priority 1: Cross-Device Communication-Drift Testing

Purpose:

Determine how CRH behaves when recovered context is available but the receiving environment differs from the originating environment.

The test should deliberately introduce a controlled difference after Save State recovery.

Observe whether CRH:

* preserves the distinction between recovered and current context;
* distinguishes recovered context from current environment state;
* detects or exposes relevant discrepancies;
* avoids manufacturing continuity;
* maintains verification boundaries;
* maintains authority boundaries.

Expected result:

A documented observation showing how CRH handles divergence between recovered conversational context and current environmental evidence.

---

## Priority 2: Expanded Continuity and Degradation Testing

Purpose:

Extend the existing conformance/degradation framework using evidence from cross-device testing.

Candidate areas:

* communication drift;
* recovered-context divergence;
* unresolved verification;
* stale or inapplicable Save State;
* conflicting Save State candidates;
* repository/bootstrap divergence;
* authority boundary behavior following degraded orientation.

Testing should be added only where the observed behavior justifies a formal test case.

---

## Priority 3: Evidence Consolidation

Purpose:

Maintain a structured record of what each experiment actually establishes.

Each recorded test should identify:

* initial state;
* environment;
* available Save State;
* Save State assessment;
* observed behavior;
* independently verified facts;
* unresolved facts;
* resulting CRH classification;
* demonstrated capability;
* limitations of the observation.

Conclusions must not exceed the evidence produced by the test.

---

## Priority 4: Maturity and Release Assessment

Purpose:

Evaluate whether the accumulated evidence supports any change to the current CRH maturity declaration.

Current principle:

Further confidence should come primarily from evidence collection and repeatability rather than unnecessary framework construction.

The current Experimental / governance-baseline characterization should remain unchanged unless subsequent evidence provides a documented basis for revision.

---

# Recommended Implementation Sequence

1. Establish a fresh repository/bootstrap baseline.
2. Design the communication-drift test.
3. Execute the controlled cross-device test.
4. Record the resulting evidence.
5. Determine whether the observation exposes a model, documentation, or implementation gap.
6. Add conformance/degradation coverage where justified.
7. Consolidate evidence.
8. Reassess maturity and remaining roadmap items.

---

## Current Session Target

The immediate workstation objective is:

**Fresh baseline -> communication-drift experiment design.**

Do not repeat the completed Save State recovery test unless the new experiment requires it as a controlled baseline.