import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure SmallWorldPackage where
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  rewirngProbability : ℝ
  degreeDistribution : List ℕ
  networkDiameter : ℕ

structure SmallWorldEvidence (S : SmallWorldPackage) where
  clusteringCoefficientClosed : S.clusteringCoefficient > 0
  averagePathLengthClosed : S.averagePathLength > 1
  rewirngProbabilityClosed : S.rewirngProbability ∈ (0,1)
  degreeDistributionClosed : S.degreeDistribution ≠ []
  networkDiameterClosed : S.networkDiameter > 0

def SmallWorldClosed (S : SmallWorldPackage) : Prop :=
  S.clusteringCoefficient > 0 ∧ S.averagePathLength > 1 ∧
  S.rewirngProbability ∈ (0,1) ∧ S.degreeDistribution ≠ [] ∧ S.networkDiameter > 0

theorem small_world_closed_from_evidence (S : SmallWorldPackage) (E : SmallWorldEvidence S) :
    SmallWorldClosed S := by
  exact And.intro E.clusteringCoefficientClosed
    (And.intro E.averagePathLengthClosed
      (And.intro E.rewirngProbabilityClosed
        (And.intro E.degreeDistributionClosed E.networkDiameterClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse