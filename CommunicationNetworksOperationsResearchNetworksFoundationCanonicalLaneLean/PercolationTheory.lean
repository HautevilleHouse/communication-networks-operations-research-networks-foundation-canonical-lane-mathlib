import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure PercolationPackage where
  criticalProbability : Float
  infiniteClusterExists : Prop
  percolationThreshold : Float
  clusterSizeDistribution : Prop
  fractalDimension : Float

structure PercolationEvidence (P : PercolationPackage) where
  criticalProbabilityClosed : P.criticalProbability ∈ (0 : Float)..1
  infiniteClusterExistsClosed : P.infiniteClusterExists
  percolationThresholdClosed : P.percolationThreshold ∈ (0 : Float)..1
  clusterSizeDistributionClosed : P.clusterSizeDistribution
  fractalDimensionClosed : P.fractalDimension > 0

def PercolationClosed (P : PercolationPackage) : Prop :=
  P.criticalProbability ∈ (0 : Float)..1 ∧
  P.infiniteClusterExists ∧
  P.percolationThreshold ∈ (0 : Float)..1 ∧
  P.clusterSizeDistribution ∧
  P.fractalDimension > 0

theorem percolation_closed_from_evidence (P : PercolationPackage) (E : PercolationEvidence P) : PercolationClosed P := by
  exact And.intro E.criticalProbabilityClosed
    (And.intro E.infiniteClusterExistsClosed
      (And.intro E.percolationThresholdClosed
        (And.intro E.clusterSizeDistributionClosed E.fractalDimensionClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse