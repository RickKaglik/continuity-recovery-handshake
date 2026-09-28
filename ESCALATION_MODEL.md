# CRH Escalation Model

Status

Draft

---

## Purpose

Define how CRH implementations should respond when evidence, authority, safety, or uncertainty conditions require increased operational constraint.

The escalation model complements the CRH state-transition rules, trust model, and trust boundary.

It does not create authority, establish continuity, or replace verification.

---

## Core Principle

Escalation should be evidence-driven and proportional.

When relevant evidence becomes incomplete, contradictory, unavailable, or insufficient for the intended operational movement, CRH should increase operational constraints rather than compensate through assumption, familiarity, elapsed time, or confidence.

Escalation should continue until the affected condition is resolved, sufficient evidence is restored, or operational movement is blocked.

---

## Escalation Triggers

Escalation may be required when:

- required evidence cannot be obtained;
- previously available evidence becomes incomplete;
- relevant evidence becomes contradictory;
- verification fails;
- uncertainty materially increases;
- the scope of verified evidence no longer supports the intended claim;
- an authority boundary cannot be established;
- an existing authority boundary is exceeded;
- a required control condition fails;
- safety-relevant uncertainty cannot be resolved.

Behavioral familiarity, expectation, elapsed time, or confidence alone does not justify avoiding escalation.

---

## Escalation Responses

CRH escalation should follow the minimum necessary increase in operational constraint.

### Reassessment

When a relevant uncertainty or evidence change is detected:

1. Identify the affected claim or operational activity.
2. Identify the evidence supporting the affected claim.
3. Re-verify relevant evidence where practical.
4. Identify what remains unknown or uncertain.
5. Reassess trust and authority.
6. Determine whether the current operational state remains justified.

---

### Limited Operation

If useful orientation remains but material uncertainty prevents unrestricted movement:

- restrict movement to the supported scope;
- disclose the relevant uncertainty;
- avoid claims exceeding available evidence;
- obtain additional evidence where practical;
- reassess before expanding operational scope.

This condition corresponds to the existing Partial state where applicable.

---

### Degraded Operation

If evidence becomes incomplete, contradictory, or unverifiable such that normal movement is no longer sufficiently supported:

- increase operational constraints;
- identify the affected evidence or claim;
- suspend unsupported conclusions;
- preserve the available evidence;
- perform additional verification where practical;
- reassess whether further movement is justified.

This condition corresponds to the existing Degraded state where applicable.

---

### Blocked Operation

If required evidence cannot be obtained, a required control condition fails, or the intended movement cannot be supported within the established authority boundary:

- stop the affected operational movement;
- do not substitute assumption for missing evidence;
- preserve relevant evidence and uncertainty;
- record the reason for blocking where practical;
- permit reassessment only when new or re-verified evidence becomes available.

This condition corresponds to the existing Blocked state where applicable.

---

### Unavailable Assessment

If the required assessment cannot presently be performed:

- do not infer a positive trust assessment;
- do not infer authority from the absence of contrary evidence;
- disclose the assessment limitation;
- obtain the required evidence or capability before resuming assessment.

This condition corresponds to the existing Unavailable state where applicable.

---

## Escalation and Trust

Trust assessment and escalation are related but distinct.

A reduction in trust for a specific claim may require increased operational constraints, but trust does not itself determine the resulting state.

Escalation must consider:

- the specific claim affected;
- the verification class applied;
- the evidence available;
- the remaining uncertainty;
- the applicable authority boundary;
- the intended operational movement.

Trust must not be transferred from one claim to another to avoid an escalation.

---

## Escalation and Authority

Authority must remain within the boundaries established by verified evidence, explicit permissions, disclosed uncertainty, and applicable controls.

If the evidence supporting an authority boundary becomes insufficient, the affected operational movement should be constrained or stopped until the boundary can be reassessed.

CRH does not grant authority through escalation, de-escalation, recovery, or successful verification.

---

## De-escalation

Escalation should not be reversed solely because conditions appear familiar or stable.

De-escalation requires newly observed or re-verified evidence appropriate to the destination state.

Examples include:

- restoration of previously unavailable evidence;
- successful re-verification of previously failed evidence;
- resolution of contradictory evidence;
- reduction of material uncertainty;
- restoration of a supported authority boundary.

A de-escalation must satisfy the existing CRH state-transition rules.

---

## Evidence and Auditability

Where practical, an escalation event should be reconstructable from the evidence ledger.

The record should identify:

- triggering condition;
- affected claim or operational activity;
- evidence observed;
- verification class;
- relevant limitation or uncertainty;
- resulting trust assessment;
- resulting authority boundary;
- resulting operational constraint;
- evidence required for reassessment or de-escalation.

The absence of an evidence record should not be silently converted into a positive assessment.

---

## Proportionality

Escalation should be proportional to the affected evidence, claim, authority, and operational risk.

A localized evidence limitation does not automatically invalidate unrelated verified claims.

Conversely, evidence supporting one claim must not be used to justify movement outside that claim's scope.

---

## Relationship to CRH Controls

This model complements:

- `CRH-CONTROL-MODEL.md`
- `CRH-STATE.json`
- `TRUST-MODEL.md`
- `TRUST-BOUNDARY.md`
- `OBSERVABLE-VERIFICATION.md`
- `BYTE-FAITHFUL-VERIFICATION.md`
- conformance testing
- degradation testing
- evidence ledger requirements

The escalation model does not replace these controls.

The existing CRH state-transition rules remain authoritative for permitted state transitions.

---

## Operational Rule

When evidence or authority becomes insufficient for intended movement:

**Inspect -> Re-verify -> Reassess -> Constrain -> Stop if required -> Reassess when evidence changes.**

Do not compensate for missing evidence with assumption, familiarity, expectation, elapsed time, or confidence.

---

## Status

This document defines the initial CRH escalation-model surface.

It is intentionally bounded. It does not define an automated escalation engine, numerical risk score, universal safety threshold, or independent certification regime.

Future revisions may define formal escalation schemas, automated evaluation rules, or additional conformance cases where supported by evidence.

