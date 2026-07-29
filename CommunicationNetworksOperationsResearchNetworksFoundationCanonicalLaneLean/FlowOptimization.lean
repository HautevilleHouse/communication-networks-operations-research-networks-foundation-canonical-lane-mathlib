import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure FlowOptimizationPackage where
  maxFlow : ℝ
  minCut : ℝ
  congestionMinimized : ℝ
  latencyBounds : List ℝ
  throughputCapacity : ℝ

structure FlowOptimizationEvidence (F : FlowOptimizationPackage) where
  maxFlowClosed : F.maxFlow ≥ 0
  minCutClosed : F.minCut ≥ 0
  congestionMinimizedClosed : F.congestionMinimized > 0
  latencyBoundsClosed : F.latencyBounds ≠ []
  throughputCapacityClosed : F.throughputCapacity > 0

def FlowOptimizationClosed (F : FlowOptimizationPackage) : Prop :=
  F.maxFlow ≥ 0 ∧ F.minCut ≥ 0 ∧
  F.congestionMinimized > 0 ∧ F.latencyBounds ≠ [] ∧ F.throughputCapacity > 0

theorem flow_optimization_closed_from_evidence (F : FlowOptimizationPackage) (E : FlowOptimizationEvidence F) :
    FlowOptimizationClosed F := by
  exact And.intro E.maxFlowClosed
    (And.intro E.minCutClosed
      (And.intro E.congestionMinimizedClosed
        (And.intro E.latencyBoundsClosed E.throughputCapacityClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse