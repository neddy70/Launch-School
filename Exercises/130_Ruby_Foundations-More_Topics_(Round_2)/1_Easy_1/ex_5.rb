# ex_5.rb
# Encrypted Pioneers
# The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.
secrets = <<~HEREDOC
            Nqn Ybirynpr
            Tenpr Ubccre
            Nqryr Tbyqfgvar
            Nyna Ghevat
            Puneyrf Onoontr
            Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
            Wbua Ngnanfbss
            Ybvf Unvog
            Pynhqr Funaaba
            Fgrir Wbof
            Ovyy Tngrf
            Gvz Orearef-Yrr
            Fgrir Jbmavnx
            Xbaenq Mhfr
            Fve Nagbal Ubner
            Zneiva Zvafxl
            Lhxvuveb Zngfhzbgb
            Unllvz Fybavzfxv
            Tregehqr Oynapu
          HEREDOC

# Write a program that deciphers and prints each of these names .

ALPHABET = [*'a'..'z', *'A'..'Z']
ALTERNATE = [*'n'..'z', *'a'..'m', *'N'..'Z', *'A'..'M']

DICT = ALPHABET.zip(ALTERNATE).to_h

def rot13(string)
  string.gsub(/[#{DICT.keys.join}]/, DICT)
end

puts rot13(secrets)
