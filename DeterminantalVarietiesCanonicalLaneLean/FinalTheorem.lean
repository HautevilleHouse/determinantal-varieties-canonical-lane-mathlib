import DeterminantalVarietiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DeterminantalVarietiesCanonicalLaneLean

def ConstrainedDeterminantalVarietiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_determinantal_varieties_endgame (A : AdmissibleClass) :
    ConstrainedDeterminantalVarietiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DeterminantalVarietiesCanonicalLaneLean
end HautevilleHouse