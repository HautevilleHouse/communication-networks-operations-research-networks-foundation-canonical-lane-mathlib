import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure ErdosRenyiModel where
  numVertices : ℕ
  edgeProbability : ℝ
  connectivityThreshold : ℝ
  giantComponentExists : Prop

structure ErdosRenyiEvidence (G : ErdosRenyiModel) where
  thresholdCondition : G.edgeProbability ≥ (log (G.numVertices : ℝ)) / (G.numVertices : ℝ)
  giantComponentClosed : G.giantComponentExists

def ErdosRenyiClosed (G : ErdosRenyiModel) : Prop :=
  G.giantComponentExists ∧ G.edgeProbability ≥ (log (G.numVertices : ℝ)) / (G.numVertices : ℝ)

theorem erdos_renyi_closed_from_evidence (G : ErdosRenyiModel) (E : ErdosRenyiEvidence G) : ErdosRenyiClosed G := by
  exact And.intro E.thresholdCondition E.giantComponentClosed

end HautevilleHouse.CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean