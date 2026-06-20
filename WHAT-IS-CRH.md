# What Is CRH?

Status: Public Explanation

## Overview

The Continuity Recovery Handshake (CRH) is a governance and recovery framework intended to improve orientation, transparency, and recoverability following disruption.

CRH focuses on helping users and systems recognize, disclose, verify, and recover from loss of orientation while maintaining observable recovery state.

CRH was developed from the observation that systems can continue operating after interruption while losing trustworthy orientation from the user's perspective.

CRH addresses that gap through explicit recovery behavior rather than assumptions of continuity.

---

## The Problem

Modern AI systems, chat systems, and session-based systems may remain operational after interruption while losing observable orientation.

Users often cannot determine:

- what information survived;
- what information was lost;
- what information was verified;
- what information was assumed;
- whether recovery is complete or partial.

This creates uncertainty and reduces trust.

---

## The Observation

A recoverable system still feels broken if the user cannot see the recovery state.

Recovery must therefore be observable, not merely internal.

---

## The Goal

CRH does not transfer continuity.

CRH transfers a recovery behavior.

The objective is not to prove uninterrupted continuity.

The objective is to support trustworthy recovery when continuity cannot be proven.

---

## Core Principles

### Recoverability

A recoverable system should support observable recovery following disruption.

### Governability

A system that cannot preserve orientation under disruption is not yet governable.

### Inspection First

When uncertainty exists, inspect evidence before inferring from behavior.

Recognizable behavior may support investigation but does not constitute proof.

### Trustworthy Re-entry

Re-entry should disclose known state, unknown state, and confidence level.

### Degradation Disclosure

Degraded operation should be disclosed rather than hidden.

---

## What CRH Is

CRH is a framework for:

- orientation;
- re-entry;
- recovery verification;
- degradation disclosure;
- trust preservation;
- governance under uncertainty.

---

## What CRH Is Not

CRH is not:

- memory;
- continuity transfer;
- identity persistence;
- proof of awareness across sessions;
- artificial general intelligence;
- a production-grade safety certification system.

CRH makes no claim that continuity can always be preserved.

---

## Current Status

CRH 0.1 Governance Baseline

Current repository capabilities include:

- bootstrap verification;
- re-entry procedures;
- trust-boundary documentation;
- conformance testing framework;
- degradation testing framework;
- release governance controls.

---

## Where To Start

Recommended reading order:

1. README.md
2. BOOTSTRAP.md
3. REENTRY.md
4. TRUST-BOUNDARY.md
5. CONFORMANCE_TESTS.md
6. DEGRADATION_TESTS.md

---

## Project Philosophy

Confusion is acceptable.

Unanchored confusion is not.

CRH seeks to make uncertainty visible, bounded, and recoverable.
