import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure QueueingNetwork where
  arrivalRate : ℝ
  serviceRate : ℝ
  numServers : ℕ
  utilizationFactor : ℝ
  stabilityCondition : Prop

structure QueueingEvidence (Q : QueueingNetwork) where
  utilizationBelowOne : Q.utilizationFactor < 1
  stabilityConditionClosed : Q.stabilityCondition

def QueueingPerformanceClosed (Q : QueueingNetwork) : Prop :=
  Q.stabilityCondition ∧ Q.utilizationFactor < 1

theorem queueing_performance_closed_from_evidence (Q : QueueingNetwork) (E : QueueingEvidence Q) : QueueingPerformanceClosed Q := by
  exact And.intro E.stabilityConditionClosed E.utilizationBelowOne

end HautevilleHouse.CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean