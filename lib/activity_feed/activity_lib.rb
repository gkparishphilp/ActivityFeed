module ActivityFeed
	module ActivityLib
		
		DICTIONARY = {
			'buy' => 'bought',
			'read' => 'read',
			'publish' => 'published',
			'win' => 'won',
			'sell' => 'sold'
		}
    
		def past_tense( verb )
			first_word = verb.match( /\A\w+/).to_s
			if DICTIONARY.has_value? first_word
				return verb
			elsif DICTIONARY.has_key? first_word
				return verb.gsub( /\A\w+/, DICTIONARY[first_word] )
			else
				first_word = first_word + 'ed'
				return verb.gsub( /\A\w+/, first_word )
			end
		end
		
		def whitespace( phrase )
			return phrase.gsub( /_|-/, " " )
		end
		
	end
end