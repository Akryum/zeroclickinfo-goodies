#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "hearth_stone_akryum";
zci is_cached   => 1;

=for comment
ddg_goodie_test(
    [qw( DDG::Goodie::HearthStone::Akryum )],
    # At a minimum, be sure to include tests for all:
    # - primary_example_queries
    # - secondary_example_queries
    'example query' => test_zci('query'),
    # Try to include some examples of queries on which it might
    # appear that your answer will trigger, but does not.
    'bad example query' => undef,
);
=cut

ddg_goodie_test(
    [qw(
        DDG::Goodie::HearthStone::Akryum
    )],
    'duckduckhack Akryum' => test_zci('Akryum is awesome and has successfully completed the DuckDuckHack Goodie tutorial!'),
    'duckduckhack Akryum is awesome' => undef,
);

done_testing;
