import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure GraphSpectraPackage where
  adjacencySpectrum : List ℕ
  laplacianSpectrum : List ℕ
  spectralRadius : ℝ
  algebraicConnectivity : ℝ
  expansionRatio : ℝ

structure GraphSpectraEvidence (G : GraphSpectraPackage) where
  adjacencySpectrumClosed : G.adjacencySpectrum ≠ []
  laplacianSpectrumClosed : G.laplacianSpectrum ≠ []
  spectralRadiusClosed : G.spectralRadius > 0
  algebraicConnectivityClosed : G.algebraicConnectivity ≥ 0
  expansionRatioClosed : G.expansionRatio > 0

def GraphSpectraClosed (G : GraphSpectraPackage) : Prop :=
  G.adjacencySpectrum ≠ [] ∧ G.laplacianSpectrum ≠ [] ∧
  G.spectralRadius > 0 ∧ G.algebraicConnectivity ≥ 0 ∧ G.expansionRatio > 0

theorem graph_spectra_closed_from_evidence (G : GraphSpectraPackage) (E : GraphSpectraEvidence G) :
    GraphSpectraClosed G := by
  exact And.intro E.adjacencySpectrumClosed
    (And.intro E.laplacianSpectrumClosed
      (And.intro E.spectralRadiusClosed
        (And.intro E.algebraicConnectivityClosed E.expansionRatioClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse