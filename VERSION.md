# VERSION

Status: Active

Specification Version: CRH-0.1

Document Version: 0.2

---

## Purpose

This document declares the current published specification baseline for the Continuity Recovery Handshake (CRH) repository.

It distinguishes the CRH specification version from the version of this declaration document and identifies the controls, boundaries, and maturity of the current baseline.

The declared release remains **CRH-0.1**. The repository may evolve within that baseline without implying a new specification release.

---

## Current Status

Release Status: CRH-0.1

Maturity: Experimental

Development Status: Active

Intended Use:

* Research
* Evaluation
* Governance development
* Recovery procedure testing
* Architectural and conformance development

Not Intended For:

* Identity verification
* Authentication
* Legal authority determination
* Medical decision support
* Financial decision support
* Safety-critical autonomous operation

---

## Declared Specification Baseline

CRH-0.1 currently comprises the repository controls and specifications governing:

* Bootstrap and source-of-record identification
* Operational invocation
* Re-entry and recovery
* Inspection, structural, and byte-faithful verification
* Observable evidence and evidence-ledger recording
* Operational state and evidence-driven state transitions
* Trust assessment within an explicit trust boundary
* Authority assessment bounded by verified evidence
* Conformance and degradation testing frameworks
* Release and governance controls

These capabilities are distributed across the repository artifacts listed below. No single document should be treated as a complete substitute for the applicable control specifications.

---

## Supported Controls

Current CRH-0.1 controls include:

* Bootstrap Source-of-Record
* Invocation Artifact
* Re-entry Procedure
* Bootstrap-Critical Verification
* Verification-Class Separation
* Machine-Readable Operational State
* Evidence Ledger
* Evidence-Driven State Transition Rules
* Trust Boundary Specification
* Trust Model
* Conformance Testing Framework
* Degradation Testing Framework
* Degradation Case Documentation
* Release Governance

The control set is evidence-bounded. Individual controls do not establish continuity, identity, authorship, authority, authentication, or memory correctness unless separate evidence and controls explicitly support the relevant claim.

---

## Specification Boundaries

CRH-0.1 is a governance and recovery framework.

CRH does not claim:

* continuity merely because recovery succeeds;
* identity merely because repository or behavioral evidence matches;
* authority merely because evidence is trusted;
* authentication without an applicable authentication mechanism;
* memory correctness merely because recovered context appears consistent;
* authenticity beyond the evidence actually verified.

Trust assessments are claim-specific and evidence-bounded. Authority remains distinct from trust and must remain within applicable operational controls.

---

## Known Limitations

Known limitations include:

* No formal reference implementation
* No independent conformance certification process
* No authenticated identity model
* No cryptographic authentication model
* No distributed recovery protocol
* Limited field-testing population
* No claim of verified multi-user continuity
* No claim of verified multi-device continuity
* No production deployment guidance

The presence of verification, trust, and governance controls does not remove these limitations.

---

## Compatibility Expectations

Artifacts produced for CRH-0.1 should not be assumed compatible with future specification releases.

Future versions may revise:

* Control definitions
* Conformance requirements
* Verification requirements
* Trust and authority requirements
* State-transition requirements
* Governance requirements
* Release criteria

Changes within the CRH-0.1 repository baseline do not by themselves constitute a new specification version.

---

## Versioning Rule

The specification version identifies the published CRH control baseline.

The document version identifies revisions to this declaration.

A revision to repository artifacts may update the declared CRH-0.1 baseline without changing the specification version when the change remains within the existing release governance and does not establish a new published specification baseline.

A future specification release should explicitly declare its version and identify the changes that distinguish it from the preceding baseline.

---

## Authority Statement

This document declares the current published status of the CRH repository.

Where conflicts exist between informal discussion and repository artifacts, repository artifacts take precedence.

Within the repository, more specific control documents govern the requirements of their respective domains.

This declaration does not grant operational authority, legal authority, authentication, or identity.

---

## Related Artifacts

Core specification and governance artifacts include:

* BOOTSTRAP.md
* AXIOM-INVOCATION.md
* REENTRY.md
* CRH-CONTROL-MODEL.md
* CORE-CONCEPTS.md
* CRH-STATE.json
* CONFORMANCE_TESTS.md
* DEGRADATION_TESTS.md
* TRUST-BOUNDARY.md
* TRUST-MODEL.md
* CHANGELOG.md
* RELEASE_NOTES_CRH_0_1.md

---

## Status of This Declaration

This declaration is part of the CRH-0.1 repository baseline.

It is an active specification-status artifact, not an independent certification of implementation, conformance, continuity, identity, or authority.
