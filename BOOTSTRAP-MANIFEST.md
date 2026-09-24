# Bootstrap Integrity Manifest

Status: Draft

## Purpose

Define the bootstrap-critical artifact set and the procedure used to verify its content integrity.

## Bootstrap-Critical Artifact Set

- BOOTSTRAP.md
- AXIOM-INVOCATION.md
- BOOTSTRAP-MANIFEST.md
- REENTRY.md
- verify-bootstrap.ps1

## Integrity Record

Checksum Algorithm:

SHA256

Integrity Record File:

BOOTSTRAP-CRITICAL.sha256

Generation Method:

PowerShell Get-FileHash

## Verification Procedure

1. Run `verify-bootstrap.ps1` from the repository root.
2. The script compares the current SHA256 hashes of the bootstrap-critical artifacts against `BOOTSTRAP-CRITICAL.sha256`.
3. A mismatch places bootstrap integrity in a degraded state until resolved.
4. Inability to perform verification must be disclosed; verification must not be inferred.

## Limitations

This procedure verifies content consistency of the bootstrap-critical artifact set against the recorded hashes.

It does not establish authorship, trustworthiness, repository provenance, runtime continuity, or cross-device continuity.

Integrity verification does not by itself establish continuity.
