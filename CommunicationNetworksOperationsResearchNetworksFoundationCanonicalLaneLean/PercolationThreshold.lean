import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure PercolationPackage where
  sitePercolationThreshold : ℝ
  bondPercolationThreshold : ℝ
  clusterSizeDistribution : List ℕ
  infiniteClusterExists : Prop
  criticalExponents : List ℝ

structure PercolationEvidence (P : PercolationPackage) where
  sitePercolationThresholdClosed : P.sitePercolationThreshold ∈ (0,1)
  bondPercolationThresholdClosed : P.bondPercolationThreshold ∈ (0,1)
  clusterSizeDistributionClosed : P.clusterSizeDistribution ≠ []
  infiniteClusterExistsClosed : P.infiniteClusterExists
  criticalExponentsClosed : P.criticalExponents ≠ []

def PercolationClosed (P : PercolationPackage) : Prop :=
  P.sitePercolationThreshold ∈ (0,1) ∧ P.bondPercolationThreshold ∈ (0,1) ∧
  P.clusterSizeDistribution ≠ [] ∧ P.infiniteClusterExists ∧ P.criticalExponents ≠ []

theorem percolation_closed_from_evidence (P : PercolationPackage) (E : PercolationEvidence P) :
    PercolationClosed P := by
  exact And.intro E.sitePercolationThresholdClosed
    (And.intro E.bondPercolationThresholdClosed
      (And.intro E.clusterSizeDistributionClosed
        (And.intro E.infiniteClusterExistsClosed E.criticalExponentsClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse