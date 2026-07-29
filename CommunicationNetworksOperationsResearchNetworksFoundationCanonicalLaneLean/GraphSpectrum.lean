import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure GraphSpectrum where
  adjacencyMatrix : List (List Rat)
  eigenvalues : List Rat
  spectralGap : Rat
  expanderProperty : Prop

structure SpectrumEvidence (G : GraphSpectrum) where
  spectralGapClosed : G.spectralGap > 0
  expanderPropertyClosed : G.expanderProperty

def SpectrumClosed (G : GraphSpectrum) : Prop :=
  G.spectralGap > 0 ∧ G.expanderProperty

theorem spectrum_closed_from_evidence (G : GraphSpectrum) (E : SpectrumEvidence G) :
    SpectrumClosed G := by
  exact And.intro E.spectralGapClosed E.expanderPropertyClosed

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse