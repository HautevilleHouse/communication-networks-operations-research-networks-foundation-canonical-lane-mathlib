import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure FlowNetwork where
  vertices : Type u
  edges : Type v
  source : vertices
  sink : vertices
  capacity : edges → ℝ
  flow : edges → ℝ

def flowConservation (f : FlowNetwork) : Prop :=
  ∀ v : f.vertices, v ≠ f.source ∧ v ≠ f.sink →
    (∑ e : f.edges, f.flow e) = 0

def capacityConstraints (f : FlowNetwork) : Prop :=
  ∀ e : f.edges, f.flow e ≤ f.capacity e

structure MaxFlowMinCutTheorem where
  network : FlowNetwork
  maxFlowValue : ℝ
  minCutCapacity : ℝ
  equality : maxFlowValue = minCutCapacity
  flowFeasible : flowConservation network ∧ capacityConstraints network

def networkFlowClosed (M : MaxFlowMinCutTheorem) : Prop :=
  M.equality ∧ M.flowFeasible

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse