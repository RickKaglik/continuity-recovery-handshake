\# CRH Control Model



Status



Draft



Purpose



Describe the control architecture of the Continuity Recovery Handshake (CRH).



This document explains how the major CRH concepts relate to one another and how operational decisions flow from initial system contact through trustworthy movement.



CRH Philosophy



CRH is not a continuity system.



CRH is a recoverability and governance framework.



Its objective is to reduce uncertainty by requiring observable evidence before operational movement.



Core Principle



Inspection Before Inference.



Observable evidence should be inspected before operational conclusions are drawn.



Recognizable behavior may support investigation.



Recognizable behavior does not constitute proof.



Control Flow



The CRH operational model is:



&#x20;   Presence

&#x20;       ↓

&#x20;   Orientation

&#x20;       ↓

&#x20;   Observable Verification

&#x20;       ↓

&#x20;   Trust Assessment

&#x20;       ↓

&#x20;   Authority Assessment

&#x20;       ↓

&#x20;   Operational Movement



Each stage depends upon the successful completion of the previous stage.



Movement should not occur before sufficient orientation has been established.



Stage 1 - Presence



Objective



Determine whether meaningful interaction is possible.



Questions answered



\- Is communication established?

\- Is the system responsive?

\- Is the operator present?



Output



Presence established.



Stage 2 - Orientation



Objective



Establish the current operational state.



Orientation includes disclosure of:



\- known context;

\- unknown context;

\- scope;

\- constraints;

\- current state;

\- next safe move.



Orientation does not establish continuity.



Orientation establishes current operational understanding.



Stage 3 - Observable Verification



Objective



Support operational understanding through observable evidence.



Observable verification answers:



What evidence was inspected?



What conclusions are supported?



What remains unknown?



Verification Classes



Observable verification consists of three classes.



Inspection Verification



Supports:



\- accessibility;

\- visibility;

\- readability;

\- structural inspection.



Structural Verification



Supports:



\- repository identity;

\- artifact presence;

\- manifest availability;

\- repository organization.



Byte-Faithful Verification



Supports:



\- exact file integrity;

\- cryptographic verification;

\- SHA256 equivalence.



Verification classes possess different evidentiary authority.



Stage 4 - Trust Assessment



Objective



Determine the degree of confidence supported by observable evidence.



Trust is earned.



Trust is not implied.



Trust increases as observable evidence becomes stronger.



Trust decreases when uncertainty increases.



Trust should always disclose remaining unknowns.



Stage 5 - Authority Assessment



Objective



Determine whether sufficient authority exists for operational movement.



Authority depends upon:



\- verified evidence;

\- disclosed uncertainty;

\- operational constraints;

\- supported conclusions.



Authority should never exceed available evidence.



Stage 6 - Operational Movement



Objective



Proceed only after sufficient orientation and authority exist.



Movement includes:



\- recommendations;

\- operational decisions;

\- implementation;

\- recovery actions.



Movement should remain proportional to verified evidence.



Evidence Hierarchy



When multiple evidence sources disagree, preference should be given to higher-confidence evidence.



Typical order:



1\. Byte-faithful cryptographic verification.

2\. Repository-native verification.

3\. Structural verification.

4\. Inspection verification.

5\. Behavioral inference.



Lower-confidence observations should not invalidate higher-confidence observations without additional evidence.



Operational States



Normal



Evidence supports operational movement.



Partial



Useful orientation exists.



Some uncertainty remains.



Degraded



Evidence is incomplete, contradictory, or unverifiable.



Operational constraints increase.



Blocked



Required evidence cannot be obtained.



Movement should stop.



Unavailable



Assessment cannot be performed.



Relationship to Other Documents



BOOTSTRAP.md



Defines the authoritative bootstrap process.



AXIOM-INVOCATION.md



Defines operational invocation behavior.



OBSERVABLE-VERIFICATION.md



Defines observable verification principles.



BYTE-FAITHFUL-VERIFICATION.md



Defines cryptographic verification requirements.



REENTRY.md



Defines recovery procedures following interruption.



CAR documents



Capture architectural observations that modify or strengthen the framework.



Design Philosophy



CRH separates:



\- observation from inference;

\- inspection from verification;

\- trust from evidence;

\- authority from confidence;

\- continuity from recoverability.



These separations improve transparency and reduce unsupported operational assumptions.



Future Evolution



The control model is expected to evolve as additional observations are captured through field testing.



Architectural changes should be supported by observable evidence whenever practical.



Next Safe Move



Establish presence.



Recover orientation.



Inspect observable evidence.



Determine verification class.



Assess trust.



Assess authority.



Then move.


State Transition Rules

State transitions are evidence-driven.

A transition should occur only when observable evidence supports the resulting state. Elapsed time, behavioral familiarity, expectation, or assumption does not by itself justify a state transition.

Permitted Transitions

| From | To | Condition |
| --- | --- | --- |
| Unavailable | Partial | Sufficient orientation becomes available to establish a limited operational context. |
| Partial | Normal | Required evidence is obtained and uncertainty is reduced sufficiently for normal operational movement. |
| Partial | Degraded | Evidence becomes incomplete, contradictory, or unverifiable such that operational constraints must increase. |
| Partial | Blocked | Required evidence cannot be obtained and movement must stop. |
| Normal | Partial | Relevant uncertainty appears, but sufficient orientation remains for limited operation. |
| Normal | Degraded | Evidence supporting the current operating state becomes incomplete, contradictory, or unverifiable. |
| Normal | Blocked | A required control or evidence condition fails and movement must stop. |
| Degraded | Partial | Sufficient evidence is recovered to restore useful orientation, but not enough for normal operation. |
| Degraded | Normal | The conditions causing degradation are resolved and required evidence is verified. |
| Degraded | Blocked | Required evidence remains unavailable or a control condition prevents further movement. |
| Blocked | Partial | Previously missing required evidence becomes available and permits limited reassessment. |
| Blocked | Normal | Required evidence is restored and all applicable controls support normal movement. |
| Blocked | Degraded | Evidence permits reassessment but remains incomplete or contradictory. |

Transition Constraints

No transition is justified solely by elapsed time, assumption, behavioral familiarity, or expectation.

A transition must be supported by newly observed or re-verified evidence appropriate to the destination state.

Unavailable is intentionally asymmetric. It indicates that assessment cannot presently be performed. Recovery from Unavailable therefore requires sufficient evidence to establish an assessable state before further state progression occurs.

State transitions do not establish continuity, identity, authorship, authority, authentication, or integrity beyond the evidence actually verified.

