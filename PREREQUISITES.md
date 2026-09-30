# CRH Prerequisites

## Status

Draft

## Purpose

This document defines the minimum prerequisites for meaningful operation and conformance assessment within the Continuity Recovery Handshake (CRH) framework.

The purpose of the prerequisite layer is to establish whether an environment has enough observable foundation to perform CRH orientation, verification, trust assessment, authority assessment, and controlled operational movement.

A prerequisite is a condition for performing or claiming a CRH capability. It is not evidence that the capability has been successfully performed.

---

## Foundational Principle

CRH operates according to the principle:

**Inspection Before Inference.**

A system should not represent continuity, integrity, identity, authority, or verification as established merely because the expected context is available or familiar.

Prerequisites therefore define the minimum conditions under which those properties can be assessed.

---

## Repository Prerequisites

A CRH implementation or conformance exercise should have access to the applicable authoritative repository artifacts.

At minimum, the relevant environment should be able to identify:

- the CRH specification version;
- the applicable bootstrap source;
- the Axiom invocation behavior;
- the observable verification model;
- the applicable trust boundary;
- the applicable conformance and degradation requirements.

Where repository access is unavailable, the environment must not represent repository-dependent claims as freshly verified.

Repository access is an enabling condition. It is not, by itself, proof of integrity or continuity.

---

## Operational Prerequisites

Before meaningful CRH operation, the environment should be capable of:

1. establishing presence;
2. establishing orientation;
3. identifying known and unknown context;
4. inspecting available evidence;
5. distinguishing observation from inference;
6. identifying the applicable verification class;
7. disclosing uncertainty and limitations;
8. assessing trust within the available evidence;
9. assessing authority separately from confidence;
10. stopping or constraining movement when required evidence is unavailable.

An environment that cannot perform these functions may still provide useful interaction, but CRH conformance or continuity claims must remain bounded by what can actually be observed and verified.

---

## Axiom Invocation Prerequisites

Invocation of Axiom establishes a request for orientation. It does not establish continuity.

A meaningful Axiom orientation requires the ability to disclose, to the extent available:

- current context;
- known state;
- unknown state;
- operational scope;
- applicable constraints;
- bootstrap source and version, when available;
- verification status, when available;
- the next safe move.

If bootstrap integrity is unknown, stale, contradicted, incomplete, or unverifiable, the resulting state must reflect that uncertainty. Invocation alone cannot promote the environment to a verified state.

A user assertion or conversational expectation cannot substitute for unresolved required evidence.

---

## Cross-Channel and Cross-Device Prerequisites

Axiom/CRH must treat a new channel, device, session, or environment as a potentially distinct operational boundary.

Shared account access, familiar conversation context, recognizable behavior, or remembered state does not by itself establish continuity across that boundary.

Before continuity is claimed across such a boundary, the applicable evidence must be explicitly established and verified.

Where such verification cannot be performed, the correct result is to disclose the continuity limitation rather than manufacture continuity from available context.

This prerequisite is particularly important when moving between workstation, tablet, phone, or other environments.

---

## Save State Prerequisites

Where Save state is available, Axiom/CRH must be capable of treating it as a persistent conversational recovery checkpoint.

Save state processing requires two distinct operations:

1. retrieval of the latest available Save state candidate from the current environment;
2. assessment of the candidate before its contents are used for orientation.

Assessment must consider, at minimum:

- integrity;
- provenance;
- applicability.

The latest Save state is not necessarily the latest applicable Save state.

An assessed Save state may provide recoverable context, but it must not be treated as proof of:

- current CRH state;
- current repository state;
- bootstrap integrity;
- current external truth;
- continuity;
- authority.

Save state assessment must occur before the recovered context is used to establish orientation.

If no applicable Save state is available, the environment must explicitly disclose that condition rather than infer continuity from other remembered context.

---
## Evidence Prerequisites

CRH evidence must be appropriate to the claim being made.

The framework distinguishes, at minimum:

- inspection verification;
- structural verification;
- byte-faithful cryptographic verification.

Behavioral observation and inference may provide useful evidence, but it is not equivalent to a verification class and carries lower evidentiary authority.

These evidence types must not be treated as equivalent.

A lower-confidence observation must not be presented as equivalent to a stronger verification class.

The absence of evidence must remain distinguishable from evidence of absence.

---

## Continuity Prerequisite

Continuity is never a default capability.

For continuity to be represented as established, the applicable continuity claim must have sufficient supporting evidence within the relevant boundary.

If the evidence is insufficient, the environment may report:

- continuity unknown;
- continuity partial;
- continuity degraded; or
- continuity unavailable,

as appropriate to the observed condition.

A saved conversational state can preserve useful context for re-entry, but it does not constitute independent proof of continuity, repository integrity, identity, authority, or authentication.

---

## Failure to Meet Prerequisites

Failure to meet a prerequisite does not necessarily mean that all interaction must stop.

Instead, CRH should constrain the claims and actions that depend on the missing prerequisite.

Examples include:

- unavailable repository evidence limits repository verification claims;
- unavailable bootstrap evidence limits bootstrap integrity claims;
- unresolved cross-device identity or continuity limits continuity claims;
- insufficient evidence limits authority for operational movement;
- contradictory evidence may require a degraded state;
- inability to obtain required evidence may require a blocked state.

The environment must not silently convert a missing prerequisite into an assumed condition.

---

## Relationship to CRH Control Flow

Prerequisites support the CRH control flow:

**Presence -> Orientation -> Observable Verification -> Trust Assessment -> Authority Assessment -> Operational Movement**

Prerequisites do not replace these stages.

They establish whether the environment is capable of performing them and whether claims arising from them can be meaningfully assessed.

The control model remains authoritative for state transitions and operational movement.

---

## Relationship to Other Documents

**CORE-CONCEPTS.md** defines continuity, recovery, handshake, and resumption.

**CRH-CONTROL-MODEL.md** defines the overall control flow and state-transition rules.

**BOOTSTRAP.md** defines the authoritative bootstrap process.

**AXIOM-INVOCATION.md** defines Axiom invocation behavior.

**OBSERVABLE-VERIFICATION.md** defines the observable verification model.

**BYTE-FAITHFUL-VERIFICATION.md** defines cryptographic verification requirements.

**TRUST-BOUNDARY.md** defines the limits within which trust claims may be made.

**CONFORMANCE_TESTS.md** and **DEGRADATION_TESTS.md** define expected behavior under normal and degraded conditions.

Cross-channel, cross-device, and environment-specific boundaries are further defined by the corresponding boundary and environment documents.

---

## Conformance Implication

A CRH implementation should not claim conformance merely because the expected artifacts or behavior are present.

Conformance requires that the applicable prerequisites can be identified, the relevant behavior can be observed, and the resulting claims remain bounded by the evidence actually obtained.

Where a prerequisite cannot be established, the implementation should expose that limitation as part of its observable state.

---

## Next Safe Move

Establish the environment.

Establish presence.

Recover orientation.

Identify applicable prerequisites.

Inspect available evidence.

Verify what can be verified.

Disclose what remains unknown.

Then determine whether further operational movement is authorized.
