\# CRH Environment Setup



\## Status



Draft



\## Purpose



This document defines the prerequisites and procedure for introducing a new environment into the Continuity Recovery Handshake (CRH) / Axiom operational model.



The purpose is to establish the new environment as an observable operational boundary before relying on its capabilities, state, authority, or relationship to a previously operating environment.



A new environment does not inherit continuity merely because it has access to the same account, repository, conversation, saved state, or other contextual information.



The governing principle is:



\*\*A new environment receives context, not automatic continuity.\*\*



\---



\## Environment Definition



An environment is the operational context in which Axiom/CRH is functioning.



An environment may include:



\- physical device;

\- operating system or runtime;

\- application;

\- session;

\- repository access;

\- available tools;

\- available credentials or permissions;

\- persisted context;

\- network or connector availability;

\- applicable trust and authority boundaries.



A material change to the environment may create a new verification boundary.



\---



\## Environment Classification



Before introducing an environment, identify its classification.



\### Primary Environment



An environment in which CRH artifacts, repository state, bootstrap procedures, and operational work are directly available.



Example:



\*\*Workstation development environment\*\*



\### Observation Environment



An environment used primarily to inspect, observe, or interact with CRH state without necessarily having equivalent implementation capability.



Example:



\*\*Tablet or phone observation environment\*\*



\### Restricted Environment



An environment in which one or more required capabilities, artifacts, permissions, or verification mechanisms are unavailable.



\### Unknown Environment



An environment whose relevant operational characteristics cannot yet be sufficiently established.



Classification describes capability and scope.



It does not establish continuity.



\---



\## Setup Prerequisites



Before meaningful Axiom/CRH operation begins in a new environment, identify:



\- device;

\- operating environment;

\- application or runtime;

\- session;

\- available repository access;

\- available verification mechanisms;

\- available tools;

\- applicable permissions;

\- available persisted context;

\- applicable CRH version;

\- applicable bootstrap source;

\- known limitations.



The environment should not be treated as equivalent to another environment until the relevant equivalence claims have been independently supported.



\---



\## Step 1 â€” Establish Presence



Determine whether the new environment can support meaningful interaction.



Establish:



\- communication;

\- system responsiveness;

\- operator presence;

\- availability of the intended Axiom/CRH interaction path.



If meaningful interaction cannot be established, classify the environment as Unavailable and stop further assessment.



\---



\## Step 2 â€” Establish Environment Identity



Record the characteristics that define the current environment.



At minimum identify:



\- device;

\- channel;

\- session;

\- application or runtime;

\- repository access status;

\- applicable tools;

\- applicable permissions.



Environment identity is descriptive.



It does not establish continuity with any previous environment.



\---



\## Step 3 â€” Establish Repository Access



Where repository-dependent operation is expected, determine whether the repository is accessible.



Inspect, where applicable:



\- repository identity;

\- active branch;

\- current commit;

\- working-tree status;

\- relevant artifact presence.



If repository access is unavailable, document the limitation.



Do not represent repository state from another environment as current state.



\---



\## Step 4 â€” Establish Bootstrap Source



Identify the applicable bootstrap source-of-record.



The current CRH bootstrap source is:



`BOOTSTRAP.md`



The operational Axiom invocation artifact is:



`AXIOM-INVOCATION.md`



The bootstrap-critical verification process is defined by the repository's bootstrap artifacts and verification procedure.



If the source, version, scope, or integrity of the bootstrap artifacts cannot be established, classify the affected assessment as degraded or unavailable according to the applicable evidence.



\---



\## Step 5 â€” Verify Bootstrap-Critical Integrity



When repository access and the applicable verification mechanism are available, perform bootstrap-critical verification.



Use:



```powershell

powershell -ExecutionPolicy Bypass -File .\\verify-bootstrap.ps1
---

\## Step 6 - Retrieve and Assess Save State

Where Save state is available in the new environment, retrieve the latest available Save state candidate before establishing orientation.

Retrieval and assessment are separate operations.

Assess the candidate for:

- integrity;
- provenance;
- applicability.

If multiple candidates exist, identify the latest applicable Save state rather than simply selecting the newest candidate.

An assessed, applicable Save state may provide recoverable conversational context for orientation. It does not establish:

- current CRH state;
- current repository state;
- bootstrap integrity;
- current external truth;
- continuity;
- authority.

Save state assessment must occur before recovered context is used to establish orientation.

If no applicable Save state is available, explicitly record that condition and continue orientation using other available evidence.

---
