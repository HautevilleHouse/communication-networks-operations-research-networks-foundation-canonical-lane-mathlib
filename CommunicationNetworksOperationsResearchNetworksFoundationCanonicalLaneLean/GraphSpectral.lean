import canonicallanemathlib.CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean

structure GraphSpectralPackage where
  adjacencySpectrum : Prop
  laplacianSpectrum : Prop
  spectralGap : Prop
  expanderMixing : Prop

structure GraphSpectralEvidence (G : GraphSpectralPackage) where
  adjacencySpectrumClosed : G.adjacencySpectrum
  laplacianSpectrumClosed : G.laplacianSpectrum
  spectralGapClosed : G.spectralGap
  expanderMixingClosed : G.expanderMixing

def GraphSpectralClosed (G : GraphSpectralPackage) : Prop :=
  G.adjacencySpectrum ∧ G.laplacianSpectrum ∧ G.spectralGap ∧ G.expanderMixing

theorem graph_spectral_closed_from_evidence (G : GraphSpectralPackage) (E : GraphSpectralEvidence G) : GraphSpectralClosed G := by
  exact And.intro E.adjacencySpectrumClosed (And.intro E.laplacianSpectrumClosed (And.intro E.spectralGapClosed E.expanderMixingClosed))

end CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse