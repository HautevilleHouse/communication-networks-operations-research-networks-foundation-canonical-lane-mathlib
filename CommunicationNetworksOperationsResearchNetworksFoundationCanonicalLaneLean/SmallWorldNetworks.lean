import canonicallanemathlib.CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean

structure SmallWorldNetworksPackage where
  clusteringCoefficient : Prop
  averagePathLength : Prop
  wattsStrogatzModel : Prop
  phaseTransition : Prop

structure SmallWorldNetworksEvidence (S : SmallWorldNetworksPackage) where
  clusteringCoefficientClosed : S.clusteringCoefficient
  averagePathLengthClosed : S.averagePathLength
  wattsStrogatzModelClosed : S.wattsStrogatzModel
  phaseTransitionClosed : S.phaseTransition

def SmallWorldNetworksClosed (S : SmallWorldNetworksPackage) : Prop :=
  S.clusteringCoefficient ∧ S.averagePathLength ∧ S.wattsStrogatzModel ∧ S.phaseTransition

theorem small_world_networks_closed_from_evidence (S : SmallWorldNetworksPackage) (E : SmallWorldNetworksEvidence S) : SmallWorldNetworksClosed S := by
  exact And.intro E.clusteringCoefficientClosed (And.intro E.averagePathLengthClosed (And.intro E.wattsStrogatzModelClosed E.phaseTransitionClosed))

end CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse