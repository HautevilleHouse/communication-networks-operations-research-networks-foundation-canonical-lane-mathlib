import canonicallanemathlib.CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean

def ConstrainedNetworksClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_networks_endgame (A : AdmissibleClass) :
    ConstrainedNetworksClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse