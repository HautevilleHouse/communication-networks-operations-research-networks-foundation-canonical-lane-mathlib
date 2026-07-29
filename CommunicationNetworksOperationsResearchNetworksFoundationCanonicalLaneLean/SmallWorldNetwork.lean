import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure SmallWorldNetwork where
  rewiringProbability : Rat
  averagePathLength : Nat
  clusteringCoefficient : Rat
  smallWorldProperty : Prop

structure SmallWorldEvidence (S : SmallWorldNetwork) where
  smallWorldPropertyClosed : S.smallWorldProperty

def SmallWorldClosed (S : SmallWorldNetwork) : Prop :=
  S.smallWorldProperty

theorem small_world_closed_from_evidence (S : SmallWorldNetwork) (E : SmallWorldEvidence S) :
    SmallWorldClosed S := by
  exact E.smallWorldPropertyClosed

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse