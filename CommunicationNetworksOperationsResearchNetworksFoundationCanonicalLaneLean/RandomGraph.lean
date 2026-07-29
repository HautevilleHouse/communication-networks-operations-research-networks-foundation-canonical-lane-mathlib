import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean

structure RandomGraphPackage where
  edgeProbability : ℝ
  expectedDegree : ℝ
  giantComponentThreshold : Prop
  phaseTransition : ℝ
  degreeDistributionPoisson : Prop

structure RandomGraphEvidence (R : RandomGraphPackage) where
  edgeProbabilityClosed : R.edgeProbability ∈ (0,1)
  expectedDegreeClosed : R.expectedDegree > 0
  giantComponentThresholdClosed : R.giantComponentThreshold
  phaseTransitionClosed : R.phaseTransition ∈ (0,1)
  degreeDistributionPoissonClosed : R.degreeDistributionPoisson

def RandomGraphClosed (R : RandomGraphPackage) : Prop :=
  R.edgeProbability ∈ (0,1) ∧ R.expectedDegree > 0 ∧
  R.giantComponentThreshold ∧ R.phaseTransition ∈ (0,1) ∧ R.degreeDistributionPoisson

theorem random_graph_closed_from_evidence (R : RandomGraphPackage) (E : RandomGraphEvidence R) :
    RandomGraphClosed R := by
  exact And.intro E.edgeProbabilityClosed
    (And.intro E.expectedDegreeClosed
      (And.intro E.giantComponentThresholdClosed
        (And.intro E.phaseTransitionClosed E.degreeDistributionPoissonClosed)))

end CommunicationNetworksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse