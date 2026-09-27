# Core Concepts

## Status

Draft

## Purpose

This document defines the foundational concepts used throughout the Continuity Recovery Handshake (CRH) framework.

These concepts provide a common vocabulary for understanding how CRH addresses interruption, loss of orientation, recovery, verification, and resumption.

This document is conceptual. It does not establish continuity, integrity, identity, authority, or authentication.

---

## Continuity

Continuity is the preservation of an established operational context across interruption or disruption.

Within CRH, continuity concerns whether relevant state, orientation, assumptions, and relationships can be carried forward or reconstructed without silently treating an interruption as if nothing changed.

Continuity is therefore an operational property to be assessed, not an assumption to be made.

---

## Recovery

Recovery is the process of reconstructing sufficient operational context following interruption, degradation, or loss of orientation.

CRH treats recovery as an observable process. Recovery should identify what state is available, what state is missing or uncertain, and what evidence supports the resulting orientation.

Successful recovery does not by itself prove that continuity was preserved.

---

## Handshake

The handshake is the verification boundary between recovery and resumption.

A handshake establishes whether the recovered environment has sufficient verified orientation to proceed under the applicable CRH controls.

The handshake may identify agreement, disagreement, uncertainty, or degradation between the recovered state and the expected state.

Resumption should not silently substitute assumption for verification at this boundary.

---

## Relationship

The three concepts form a progression:

**Continuity -> Recovery -> Handshake -> Resumption**

- **Continuity** identifies what is intended to persist across disruption.
- **Recovery** reconstructs or re-establishes the operational context after disruption.
- **Handshake** verifies the recovered context before normal operation resumes.
- **Resumption** proceeds from the resulting verified or explicitly degraded state.

These concepts are related but are not interchangeable.

Recovery can occur when continuity is uncertain.

A handshake can identify that uncertainty rather than conceal it.

Resumption can therefore occur from an explicitly degraded state when the applicable controls permit it.

---

## Operational Implication

CRH treats interruption as an expected operating condition rather than an exceptional condition that can be ignored.

The framework therefore emphasizes:

- preservation of observable state;
- explicit recovery;
- inspection before inference;
- disclosure of uncertainty and degradation;
- verification before resumption where applicable.

The objective is not to claim perfect continuity. The objective is to make the recovery state observable and governable.

---

## Boundary

These concepts describe operational behavior and verification processes.

They do not, by themselves, establish:

- continuity;
- identity;
- memory correctness;
- authorship;
- authority;
- authentication;
- integrity beyond the evidence actually verified.

Claims about these properties require appropriate evidence and must remain within the repository's defined trust boundary.
