BOOTSTRAP-OBSERVED-INTEGRITY.md



Status



Draft



Purpose



Define a model for assessing bootstrap integrity through observable evidence when independent integrity computation is unavailable.



This model is intended for environments such as tablets, phones, restricted clients, or degraded operating conditions where a session may be able to inspect integrity-related evidence but cannot independently compute or verify artifact hashes.



The goal is to improve orientation and integrity visibility without overstating the conclusions supported by the available evidence.



Principle



Verification claims should not exceed the evidence inspected.



A session may observe integrity evidence without independently generating integrity evidence.



Observed integrity and computed integrity are not equivalent.



Bootstrap-Observed Integrity



Bootstrap-observed integrity occurs when a session inspects evidence associated with a previously verified bootstrap and determines whether the observed state is consistent with that bootstrap.



The session does not independently verify artifact integrity.



The session observes integrity-related evidence generated or verified elsewhere.



Evidence Inspected



Examples include:



\* repository identity;

\* repository owner;

\* repository branch;

\* commit identity;

\* bootstrap manifest;

\* bootstrap-critical artifacts;

\* verification records;

\* verification results produced by another verification environment.



Conclusions Supported



Bootstrap-observed integrity may support conclusions including:



\* repository accessibility;

\* repository identity consistency;

\* artifact presence;

\* manifest presence;

\* verification record visibility;

\* consistency with a previously verified bootstrap state.



Conclusions Not Supported



Bootstrap-observed integrity does not support conclusions including:



\* independent artifact integrity verification;

\* artifact hash correctness;

\* runtime continuity;

\* authorship;

\* repository provenance;

\* trustworthiness;

\* cross-device synchronization correctness.



These remain unknown unless supported by additional evidence.



Demonstrated Example



Workstation Session



Evidence inspected:



\* bootstrap-critical artifacts;

\* bootstrap manifest;

\* independently computed hashes;

\* verification script results.



Conclusions supported:



\* artifact integrity consistency;

\* manifest consistency;

\* bootstrap verification passed.



Tablet Session



Evidence inspected:



\* repository identity;

\* branch identity;

\* commit identity;

\* bootstrap manifest;

\* workstation verification records.



Conclusions supported:



\* observed repository state is consistent with the previously verified bootstrap state.



Unknowns remaining:



\* independent artifact integrity;

\* runtime continuity;

\* provenance;

\* trustworthiness.



Relationship to Observable Verification



Bootstrap-observed integrity is a specialized form of observable verification.



Observable verification establishes conclusions supported by inspected evidence.



Bootstrap-observed integrity applies that principle to environments where independent integrity computation is unavailable.



Trust Boundary



Bootstrap-observed integrity may improve orientation confidence.



Bootstrap-observed integrity does not establish continuity.



Bootstrap-observed integrity does not eliminate uncertainty.



Bootstrap-observed integrity does not replace independent verification when independent verification is available.



Unknown conditions should continue to be disclosed as unknown.



