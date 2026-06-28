\# Observable Verification



Status



Draft



Purpose



Define a verification model that allows users to assess recovery, orientation, and integrity claims through observable evidence rather than implied trust.



Principle



Recovery and orientation claims should identify:



\- evidence inspected;

\- verification method;

\- conclusions supported by that evidence;

\- remaining unknowns;

\- limitations of the verification method.



Users should not be required to trust conclusions they cannot independently inspect.



Inspection Before Inference



Verification should be based on inspection before inference.



Recognizable behavior may support investigation.



Recognizable behavior does not constitute proof.



Verification Classes



Observable verification consists of multiple classes of evidence.



Inspection Verification



Inspection verification establishes observable facts including:



\- repository accessibility;

\- artifact presence;

\- document readability;

\- expected structure;

\- visible content.



Inspection verification supports orientation.



Inspection verification does not establish cryptographic integrity.



Structural Verification



Structural verification establishes:



\- repository identity;

\- branch identity;

\- bootstrap-critical artifact presence;

\- manifest availability;

\- repository organization.



Structural verification strengthens confidence in repository state.



Structural verification does not establish byte-for-byte integrity.



Byte-Faithful Verification



Byte-faithful verification retrieves the exact repository byte stream and computes cryptographic hashes over those bytes.



Only byte-faithful verification supports cryptographic integrity verification.



Observable Evidence



Observable verification should disclose exactly what was inspected.



Examples include:



\- repository identity;

\- connector identity;

\- bootstrap-critical artifacts;

\- integrity manifest;

\- verification script output;

\- computed hashes;

\- repository state.



Supported Conclusions



Observable verification may establish:



\- repository accessibility;

\- artifact existence;

\- structural consistency;

\- successful verification procedure execution;

\- cryptographic integrity when byte fidelity has been demonstrated.



Observable verification should not claim conclusions beyond the inspected evidence.



Transformation Awareness



Different retrieval paths may present different representations of the same artifact.



Possible transformations include:



\- markdown rendering;

\- escaping characters;

\- line-ending normalization;

\- encoding conversion;

\- BOM insertion or removal;

\- display formatting;

\- presentation-layer rewriting.



Such transformations may change computed hashes without indicating repository corruption.



Observed mismatches should first be evaluated as possible retrieval-path differences before concluding integrity failure.



Evidence Hierarchy



When multiple verification methods disagree, preference should be given to the highest-confidence evidence.



Typical order is:



1\. Local byte-faithful verification.

2\. Repository-native verification.

3\. Repository-assisted structural verification.

4\. Repository-assisted inspection.

5\. Behavioral inference.



Higher-confidence evidence should not be overridden by lower-confidence evidence without additional supporting observations.



Current Demonstration



Repository-assisted inspection successfully demonstrated:



\- repository accessibility;

\- artifact visibility;

\- repository structure.



Workstation verification successfully demonstrated:



\- bootstrap-critical artifact integrity;

\- manifest consistency;

\- successful SHA256 verification.



The differing observations identified a limitation of the inspection path rather than evidence of repository corruption.



Relationship to Bootstrap



Bootstrap-critical verification remains the authoritative integrity verification procedure.



Observable verification complements bootstrap verification by disclosing:



\- what was inspected;

\- how it was inspected;

\- what conclusions are justified;

\- what remains unknown.



Observable verification increases transparency.



It does not eliminate uncertainty.



Limitations



Observable verification does not independently establish:



\- authorship;

\- provenance;

\- trustworthiness;

\- runtime continuity;

\- account-wide synchronization.



Unknown conditions should continue to be disclosed as unknown.



Next Safe Move



Inspect evidence before drawing conclusions.



Disclose the verification method used.



Distinguish inspection from byte-faithful verification.



Prefer byte-faithful verification when integrity conclusions depend upon exact file contents.

