import canonicallanemathlib.CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean

structure PercolationModelsPackage where
  bondPercolation : Prop
  sitePercolation : Prop
  criticalThreshold : Prop
  infiniteCluster : Prop

structure PercolationModelsEvidence (P : PercolationModelsPackage) where
  bondPercolationClosed : P.bondPercolation
  sitePercolationClosed : P.sitePercolation
  criticalThresholdClosed : P.criticalThreshold
  infiniteClusterClosed : P.infiniteCluster

def PercolationModelsClosed (P : PercolationModelsPackage) : Prop :=
  P.bondPercolation ∧ P.sitePercolation ∧ P.criticalThreshold ∧ P.infiniteCluster

theorem percolation_models_closed_from_evidence (P : PercolationModelsPackage) (E : PercolationModelsEvidence P) : PercolationModelsClosed P := by
  exact And.intro E.bondPercolationClosed (And.intro E.sitePercolationClosed (And.intro E.criticalThresholdClosed E.infiniteClusterClosed))

end CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse