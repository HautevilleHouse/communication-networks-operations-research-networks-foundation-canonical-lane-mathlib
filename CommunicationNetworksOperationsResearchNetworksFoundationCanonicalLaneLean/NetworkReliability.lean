import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure NetworkReliabilityPackage where
  terminalReliability : ℝ
  allTerminalReliability : ℝ
  kTerminalReliability : ℝ
  faultTolerance : ℕ
  meanTimeToFailure : ℝ

structure NetworkReliabilityEvidence (N : NetworkReliabilityPackage) where
  terminalReliabilityClosed : N.terminalReliability ∈ (0,1)
  allTerminalReliabilityClosed : N.allTerminalReliability ∈ (0,1)
  kTerminalReliabilityClosed : N.kTerminalReliability ∈ (0,1)
  faultToleranceClosed : N.faultTolerance > 0
  meanTimeToFailureClosed : N.meanTimeToFailure > 0

def NetworkReliabilityClosed (N : NetworkReliabilityPackage) : Prop :=
  N.terminalReliability ∈ (0,1) ∧ N.allTerminalReliability ∈ (0,1) ∧
  N.kTerminalReliability ∈ (0,1) ∧ N.faultTolerance > 0 ∧ N.meanTimeToFailure > 0

theorem network_reliability_closed_from_evidence (N : NetworkReliabilityPackage) (E : NetworkReliabilityEvidence N) :
    NetworkReliabilityClosed N := by
  exact And.intro E.terminalReliabilityClosed
    (And.intro E.allTerminalReliabilityClosed
      (And.intro E.kTerminalReliabilityClosed
        (And.intro E.faultToleranceClosed E.meanTimeToFailureClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse