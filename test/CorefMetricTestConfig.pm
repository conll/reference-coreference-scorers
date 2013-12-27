################################################################################
# This is the test configuration file. Test cases are stored in an 
# array, each element consisting of:
#   (1) id: an uniqe identifier for the test case.
#   (2) key_file: the key file to be tested in the CoNLL format.
#   (3) response_file: the response file to be tested in the CoNLL format.
#   (4) expected_metrics: is a hash tabel from a metric name (identical to those
#                         used in the scorer.{pl|bat}) to an array of expected
#                         metric values. All metrics except BLANC have 3 expected 
#                         numbers: (recall, precision, F-measure).
################################################################################

package CorefMetricTestConfig;
use strict;
use warnings;
use Exporter;

our @ISA= qw( Exporter );

# these are exported by default.
our @EXPORT = qw(TestCases);

#
# Values following metric names are [recall, precision, F1]
#
our @TestCases = (
{ id => "1", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC1.response",
  expected_metrics => { "muc" => [1, 1, 1], 
                        "bcub" => [1, 1, 1],
                        "ceafm" => [1, 1, 1],
                        "ceafe" => [1, 1, 1],
                        "blanc_sys" => [1, 1, 1] }
},
{ id => "2", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC2.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.5, 1, 0.66667],
                        "ceafe" => [0.6, 0.9, 0.72],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
},
{ id => "3", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC3.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [1, 0.66667, 0.8],
                        "ceafe" => [0.88571, 0.66429, 0.75918],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
},
{ id => "4", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC4.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
},
{ id => "5", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC5.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.5, 0.57143],
                        "ceafe" => [0.68889, 0.51667, 0.59048],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
},
{ id => "6", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC6.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.5, 0.57143],
                        "ceafe" => [0.73333, 0.55, 0.62857],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
},
{ id => "7", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC7.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
},
{ id => "8", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC8.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
},
{ id => "9", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC9.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],}
#                        "blanc" => [1, 1, 1, 1, 1, 1, 1] }
}
);

1;

