# Re-entry Verification Procedure

Status: Draft

## Purpose

Provide a repeatable procedure for assessing continuity and orientation during re-entry.

This procedure does not establish continuity.

This procedure establishes the current known operational state.

---

## Step 1 - Verify Repository State

Verify repository location.

Verify active branch.

Verify working tree status.

If repository state cannot be verified, classify continuity as Degraded.

---

## Step 2 - Verify Bootstrap-Critical Artifact Set

Verify the following files exist:

- BOOTSTRAP.md

- AXIOM-INVOCATION.md

- BOOTSTRAP-MANIFEST.md

- REENTRY.md

- verify-bootstrap.ps1

- BOOTSTRAP-CRITICAL.sha256

If any required artifact is missing, classify continuity as Blocked or Degraded.

---

## Step 3 - Verify Bootstrap-Critical Integrity

Run verification from the repository root:

`powershell -ExecutionPolicy Bypass -File .\verify-bootstrap.ps1`

The script compares current SHA256 hashes against `BOOTSTRAP-CRITICAL.sha256`.

If verification fails, classify continuity as Degraded until resolved.

If verification cannot be performed, classify continuity as Unavailable or Blocked.

---

## Step 4 - Verify Bootstrap and Invocation Sources

Inspect `BOOTSTRAP.md`.

Verify that it identifies the bootstrap source-of-record.

Inspect `AXIOM-INVOCATION.md`.

Verify that it contains the operational Axiom invocation behavior.

If source, scope, version, or invocation behavior cannot be verified, classify continuity as Degraded.

---

## Step 5 - Retrieve and Assess Save State

Retrieve the latest available Save state candidate from the receiving environment.

Save state retrieval and Save state assessment are separate operations.

Retrieval makes a Save state available for assessment. It does not establish that the Save state is valid, current, applicable, or trustworthy.

Assess the retrieved Save state for:

- integrity;
- provenance;
- applicability.

If multiple Save state candidates are available, assess them as necessary to identify the latest applicable Save state.

The latest Save state is not necessarily the latest applicable Save state.

An assessed Save state may provide recoverable context for orientation.

Save state does not establish:

- CRH state;
- repository state;
- bootstrap integrity;
- current external truth;
- continuity;
- authority.

If no applicable Save state is available, explicitly record that condition and continue orientation using the evidence that is available.

Save state assessment must occur before orientation is established.

---

## Step 6 - Assess Continuity State

Normal:

- Repository verified.

- Bootstrap-critical artifacts present.

- Bootstrap-critical integrity verified.

- Bootstrap source-of-record verified.

- Invocation artifact verified.

Partial:

- Repository verified.

- Some context recovered.

- One or more non-critical verification questions remain unresolved.

Degraded:

- Integrity, source, version, scope, invocation behavior, or repository state cannot be fully verified.

Blocked:

- Required artifacts are unavailable or verification cannot proceed.

Unavailable:

- Assessment cannot be performed.

---

## Step 7 - Declare Current State

Disclose:

- Known context.

- Unknown context.

- Continuity classification.

- Integrity status.

- Scope.

- Constraints.

- Next safe move.

Movement should not occur before orientation is established.

User override cannot convert unresolved degraded state into normal state.
