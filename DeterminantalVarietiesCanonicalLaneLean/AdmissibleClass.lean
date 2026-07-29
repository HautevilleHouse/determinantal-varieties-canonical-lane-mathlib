import DeterminantalVarietiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DeterminantalVarietiesCanonicalLaneLean

structure DeterminantalVarietySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DeterminantalVarietyAdmittedObject where
  space : DeterminantalVarietySpace
  matrixSpace : Type
  rank : Nat
  rankConditionHolds : Prop
  conclusion : rankConditionHolds

structure AdmissibleClass where
  object : DeterminantalVarietyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DeterminantalVarietyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DeterminantalVarietiesCanonicalLaneLean
end HautevilleHouse