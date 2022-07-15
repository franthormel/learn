package tutorial.coprime;

import java.util.Collection;

public class RelativelyPrimePredicate implements UnaryPredicate<Integer> {
    public RelativelyPrimePredicate(Collection<Integer> c) {
        this.c = c;
    }

    public boolean test(Integer x) {
        for (Integer i : c) {
            if (Algorithm.gcd(x, i) != 1) {
                return false;
            }
        }

        return !c.isEmpty();
    }

    private Collection<Integer> c;
}
