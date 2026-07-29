import DeterminantalVarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DeterminantalVarietiesCanonicalLaneLean

def DeterminantalVarietyWitnessClosed (O : DeterminantalVarietyAdmittedObject) : Prop :=
  O.rankConditionHolds

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DeterminantalVarietyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DeterminantalVarietiesCanonicalLaneLean
end HautevilleHouse