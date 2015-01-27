package DDG::Goodie::HearthStone::Akryum;
# ABSTRACT: Akryum's first Goodie

use DDG::Goodie;

zci answer_type => "hearth_stone_akryum";
zci is_cached   => 1;

name "HearthStone Akryum";
description "This is a test";
primary_example_queries "duckduckhack akryum";
category "special";
topics "gaming";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/HearthStone/Akryum.pm";
attribution github => ["https://github.com/Akryum", "Akryum"],
            twitter => "Akryum";

triggers start => "duckduckhack akryum";

handle remainder => sub {

	# optional - regex guard
	# return unless qr/^\w+/;

	return if $_; # Guard against "no answer"

	return "Akryum is awesome and has successfully completed the DuckDuckHack Goodie tutorial!";
};

1;
