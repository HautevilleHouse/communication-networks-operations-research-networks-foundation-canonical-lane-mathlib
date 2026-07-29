import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure NetworkAdmittedObject where
  graph : Type u
  adjacencyMatrix : Type v
  laplacianMatrix : Type w
  spectralRadius : Prop
  algebraicConnectivity : Prop
  eigenvalueDistribution : Prop
  conclusion : spectralRadius ∨ algebraicConnectivity

structure RandomGraphModel where
  vertexSet : Type u
  edgeProbability : ℝ
  degreeDistribution : Prop
  clusteringCoefficient : Prop
  averagePathLength : Prop

structure SmallWorldProperty where
  highClustering : Prop
  shortAveragePath : Prop
  smallWorldCoefficient : ℝ

structure PercolationThreshold where
  occupationProbability : ℝ
  giantComponentExists : Prop
  criticalThreshold : ℝ
  conclusion : criticalThreshold < occupationProbability → giantComponentExists

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse