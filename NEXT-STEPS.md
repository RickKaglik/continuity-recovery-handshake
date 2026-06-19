# NEXT-STEPS

Status: Post-CRH-0.1 Planning

Purpose: Identify the next major work items following the CRH-0.1 release baseline.

---

## Current Repository State

Completed:

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

---

## Priority 1: Trust Boundary

Artifact:

TRUST-BOUNDARY.md

Purpose:

Explicitly identify what CRH does and does not claim.

Areas to address:

* Continuity
* Memory
* Identity
* Authorship
* Authority
* Authentication

---

## Priority 2: Version Declaration

Artifact:

VERSION.md

Purpose:

Provide a clear declaration of:

* Specification version
* Status
* Supported controls
* Known limitations
* Compatibility expectations

---

## Priority 3: Escalation Model

Artifact:

ESCALATION_MODEL.md

Purpose:

Define how CRH implementations should behave when authority, evidence, safety, or uncertainty thresholds are exceeded.

---

## Priority 4: Additional Conformance Coverage

Purpose:

Expand conformance tests beyond the initial framework.

Candidate areas:

* Trust-boundary disclosure
* Version disclosure
* Escalation behavior
* Refusal under unresolved degradation
* Predictive degradation notification
* Audit-trail sufficiency

---

## Priority 5: Public Release Hardening

Purpose:

Prepare the repository for external readers and early testers.

Candidate controls:

* README clarity review
* Release checklist validation
* License confirmation
* Tag/release consistency check
* Documentation freshness review

---

## Next Recommended Work Session

Create TRUST-BOUNDARY.md.

Rationale:

The CRH-0.1 baseline now has bootstrap, verification, conformance, degradation, and release artifacts. The next highest-risk gap is claim control: clearly stating what CRH does not prove, does not preserve, and does not authorize.
