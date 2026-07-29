import canonicallanemathlib.CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : NetworksAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NetworksWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommunicationNetorksOperationsResearchNetworksFoundationCanonicalLaneLean
end HautevilleHouse