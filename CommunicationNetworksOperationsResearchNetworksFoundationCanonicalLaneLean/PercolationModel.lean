import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure PercolationModel where
  latticeType : String
  occupationProbability : Rat
  percolationThreshold : Rat
  infiniteClusterExists : Prop
  criticalExponents : List Rat

structure PercolationEvidence (P : PercolationModel) where
  infiniteClusterExistsClosed : P.infiniteClusterExists
  criticalExponentsClosed : P.criticalExponents ≠ []

def PercolationClosed (P : PercolationModel) : Prop :=
  P.infiniteClusterExists ∧ P.criticalExponents ≠ []

theorem percolation_closed_from_evidence (P : PercolationModel) (E : PercolationEvidence P) :
    PercolationClosed P := by
  exact And.intro E.infiniteClusterExistsClosed E.criticalExponentsClosed

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse