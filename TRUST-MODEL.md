# CRH Trust Model

Status

Draft

Purpose

Define how CRH derives bounded trust assessments from observable evidence without converting trust into a claim of continuity, identity, authority, or authenticity.

---

## Core Principle

Trust is claim-specific and evidence-bounded.

CRH does not treat trust as a global property of a system, session, artifact, or recovery event. A trust assessment applies only to the claim supported by the available evidence.

Evidence may support a conclusion without establishing unrelated conclusions.

Successful recovery is not proof of continuity.

---

## Trust Flow

The CRH trust model is:

    Evidence
        ↓
    Verification
        ↓
    Supported Claim
        ↓
    Trust Assessment
        ↓
    Authority Boundary

Each stage must remain distinguishable.

Evidence is observed information.

Verification establishes what was actually checked and by which verification class.

A supported claim states what the verified evidence permits CRH to conclude.

A trust assessment describes the confidence justified for that specific claim.

An authority boundary states what operational movement remains permissible given the evidence, uncertainty, and constraints.

---

## Claim-Specific Trust

Trust must be attached to a defined claim.

Examples:

- A SHA256 match can support a claim about exact file integrity.
- Repository state can support a claim about branch and synchronization state.
- Inspection can support a claim about the visible contents or declared role of an artifact.
- Re-entry evidence can support a claim about recovered operational orientation.

None of these claims, by themselves, establishes continuity, identity, authorship, authority, or authenticity.

Trust must not be transferred from one claim to another without additional evidence appropriate to the second claim.

---

## Verification and Trust

Verification class constrains the strength and scope of the resulting trust assessment.

### Inspection Verification

Supports claims about what is observable through inspection.

It does not independently establish exact byte integrity, provenance, runtime continuity, or authenticity.

### Structural Verification

Supports claims about repository structure, artifact presence, organization, and related structural conditions.

It does not independently establish content integrity, authorship, runtime continuity, or identity.

### Byte-Faithful Verification

Supports claims about exact content integrity where the verification method and reference are appropriate.

It does not establish authorship, authority, identity, or continuity merely because the bytes match.

Higher-strength verification may support a stronger claim within its defined scope, but does not expand the scope of the claim automatically.

---

## Trust Assessment Classes

CRH uses qualitative, evidence-bounded assessments rather than a universal numerical trust score.

### Evidence-Supported

Observable evidence supports the stated claim and the applicable verification conditions have been satisfied.

The assessment must identify its supporting evidence and limitations.

### Evidence-Limited

Some evidence supports the claim, but material uncertainty, incomplete verification, or scope limitations remain.

Operational movement must remain proportional to those limitations.

### Evidence-Conflicted

Relevant evidence is contradictory or cannot presently be reconciled.

The affected claim should not be treated as established. Operational state may need to move to Degraded or Blocked.

### Evidence-Unavailable

Required evidence cannot presently be obtained or assessed.

No positive trust assessment should be inferred from absence of contrary evidence.

---

## Trust Increases and Decreases

Trust may increase when:

- new relevant evidence is obtained;
- evidence is independently re-verified;
- uncertainty is reduced;
- contradictory evidence is resolved;
- a stronger applicable verification class is completed.

Trust may decrease when:

- relevant evidence becomes stale;
- evidence becomes incomplete;
- contradictory evidence appears;
- verification fails;
- previously supported assumptions become unverifiable;
- the scope of the original evidence no longer matches the current claim.

Trust changes must be attributable to an observable change in evidence or verification state.

Elapsed time, familiarity, expectation, or confidence alone does not increase trust.

---

## Trust and Authority

Trust and authority are related but distinct.

Trust describes the confidence supported by evidence for a defined claim.

Authority describes the operational permission or decision scope available under the applicable controls.

Evidence-supported trust does not create authority.

Authority must remain within the boundaries established by verified evidence, disclosed uncertainty, explicit permissions, and applicable governance controls.

A user instruction cannot convert unverified evidence into verified evidence or expand authority beyond an established boundary.

---

## Trust and Operational State

Trust assessment informs state assessment but does not replace it.

- **Normal:** evidence supports the required operational claims and applicable controls permit movement.
- **Partial:** useful evidence and orientation exist, but material uncertainty remains.
- **Degraded:** evidence is incomplete, contradictory, or unverifiable such that constraints must increase.
- **Blocked:** required evidence cannot be obtained or a required control prevents movement.
- **Unavailable:** assessment cannot presently be performed.

A state transition requires evidence appropriate to the destination state. A trust assessment alone does not authorize a transition.

---

## Evidence Ledger Requirements

A trust assessment should be reconstructable from the evidence ledger.

Where applicable, the ledger should identify:

- the evidence observed;
- verification class;
- claim supported;
- limitation;
- resulting trust assessment;
- relevant uncertainty;
- resulting authority boundary.

The absence of an evidence record should not be silently converted into a positive trust assessment.

---

## Trust Boundary

This model operates within TRUST-BOUNDARY.md.

CRH trust assessments do not establish:

- continuity;
- identity;
- authorship;
- legal or organizational authority;
- authentication;
- memory correctness;
- authenticity beyond the evidence actually verified.

Claims in these areas require evidence appropriate to the specific claim and, where necessary, independent controls.

---

## Operational Rule

Do not ask only, "Do we trust this?"

Ask:

1. What specific claim is being assessed?
2. What evidence supports that claim?
3. What verification class was applied?
4. What remains unknown or uncertain?
5. What trust assessment is justified within that scope?
6. What authority boundary follows from that assessment?
7. What additional evidence would change the assessment?

The resulting assessment should be explicit, bounded, and auditable.

---

## Relationship to Existing CRH Controls

This model complements:

- CRH-CONTROL-MODEL.md;
- TRUST-BOUNDARY.md;
- OBSERVABLE-VERIFICATION.md;
- BYTE-FAITHFUL-VERIFICATION.md;
- CRH-STATE.json;
- conformance and degradation testing artifacts.

The trust model does not replace any of these controls.

---

## Status

This document defines the initial CRH trust-model surface.

It is intentionally qualitative and evidence-bounded. It does not define a universal numerical trust score or an independent certification regime.

Future revisions may define formal claim schemas, evidence-to-assessment mappings, automated evaluation rules, or independent trust verification procedures.
