import ClassificationFiniteSimpleGroupsCanonicalLaneLean.CFSGBridge

/-!
# Quasisimple Groups and Schur Multipliers
-/

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure QuasisimplePackage {P : CFSGSourcesPackage} (S : CFSGSourcesEvidence P) where
  quasisimpleCovering : Prop
  universalCoverExists : Prop
  schurMultiplierComputed : Prop

structure QuasisimpleEvidence {P : CFSGSourcesPackage} {S : CFSGSourcesEvidence P}
    (Q : QuasisimplePackage S) where
  quasisimpleCoveringClosed : Q.quasisimpleCovering
  universalCoverExistsClosed : Q.universalCoverExists
  schurMultiplierComputedClosed : Q.schurMultiplierComputed

def QuasisimpleClosed {P : CFSGSourcesPackage} {S : CFSGSourcesEvidence P}
    (Q : QuasisimplePackage S) : Prop :=
  Q.quasisimpleCovering ∧ Q.universalCoverExists ∧ Q.schurMultiplierComputed

theorem quasisimple_closed_from_evidence {P : CFSGSourcesPackage} {S : CFSGSourcesEvidence P}
    (Q : QuasisimplePackage S) (E : QuasisimpleEvidence Q) : QuasisimpleClosed Q := by
  exact And.intro E.quasisimpleCoveringClosed
    (And.intro E.universalCoverExistsClosed E.schurMultiplierComputedClosed)

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse