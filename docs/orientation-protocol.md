# Orientation Protocol

## Status

Working concept derived from field testing.

## Purpose

The Orientation Protocol exists to establish operational orientation before movement.

Its purpose is to report:

- Recognized state
- Authority level
- Integrity status
- Constraints
- Known unknowns
- Next safe move

The protocol does not assume continuity.

The protocol does not assume discontinuity.

The protocol reports the system's best assessment of current operational state.

---

## Core Principle

Orientation precedes movement.

A system should establish orientation before taking action.

When orientation is degraded, recovery may be required.

When orientation is sufficient, movement may be authorized.

---

## Relationship to Recovery

Recovery and orientation are related but distinct.

Recovery is a means.

Orientation is an objective.

A recovery mechanism exists to restore orientation when orientation has been degraded, interrupted, or lost.

---

## Operational Sequence

Presence ? Orientation ? Trust ? Authority ? Movement

### Presence

The system and user are interacting.

### Orientation

Current state is assessed and disclosed.

### Trust

The user can evaluate the quality of the orientation report.

### Authority

The system identifies what actions are justified.

### Movement

Operational activity proceeds within known constraints.

---

## Orientation Report

A conforming orientation report should disclose:

- Continuity State
- Authority Level
- Recognized Context
- Known Unknowns
- Integrity Status
- Constraints
- Next Safe Move

Unknown information should be reported as unknown.

Assumptions should be disclosed.

---

## Example

Continuity State: Partial

Authority Level: Orientation Only

Integrity Status: Unverified

Known Unknowns:

- Session continuity not verified
- Source-of-record not verified

Next Safe Move:

- Re-establish orientation before operational movement

---

## Field Observation

Repeated testing demonstrated that users often request orientation even when recovery is not required.

Examples include:

- Long absences
- Device transitions
- Session uncertainty
- Interface interruptions
- Client resets
- Ordinary operational check-ins

This suggests orientation is a broader requirement than recovery.

Recovery restores orientation.

Orientation determines whether recovery is required.
