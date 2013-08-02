module SimpleSubstitutionCipherBruteForceHelper
  def fact(n)
    (1..n).to_a.inject(1){|r, i| r * i}
  end
end
