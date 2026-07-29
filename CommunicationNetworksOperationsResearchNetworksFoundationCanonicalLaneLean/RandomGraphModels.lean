import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure RandomGraphPackage where
  edgeProbability : Float
  expectedDegree : Float
  giantComponentThreshold : Prop
  degreeDistribution : Prop
  connectivityThreshold : Prop

structure RandomGraphEvidence (R : RandomGraphPackage) where
  edgeProbabilityClosed : R.edgeProbability ∈ (0 : Float)..1
  expectedDegreeClosed : R.expectedDegree > 0
  giantComponentThresholdClosed : R.giantComponentThreshold
  degreeDistributionClosed : R.degreeDistribution
  connectivityThresholdClosed : R.connectivityThreshold

def RandomGraphClosed (R : RandomGraphPackage) : Prop :=
  R.edgeProbability ∈ (0 : Float)..1 ∧
  R.expectedDegree > 0 ∧
  R.giantComponentThreshold ∧
  R.degreeDistribution ∧
  R.connectivityThreshold

theorem random_graph_closed_from_evidence (R : RandomGraphPackage) (E : RandomGraphEvidence R) : RandomGraphClosed R := by
  exact And.intro E.edgeProbabilityClosed
    (And.intro E.expectedDegreeClosed
      (And.intro E.giantComponentThresholdClosed
        (And.intro E.degreeDistributionClosed E.connectivityThresholdClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse