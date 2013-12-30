################################################################################
# This is the test configuration file. Test cases are stored in an 
# array, each element consisting of:
#   (1) id: a unique identifier for the test case.
#   (2) key_file: the key file to be tested in the CoNLL format.
#   (3) response_file: the response file to be tested in the CoNLL format.
#   (4) expected_metrics: is a hash label from a metric name (identical to those
#                         used in the scorer.{pl|bat}) to an array of expected
#                         metric values. All metrics have 3 expected numbers:
#                         (recall, precision, F-measure).
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
                        "ceafe" => [0.6, 0.9, 0.72],
                        "blanc_sys" => [0.21591, 1, 0.35385] }
},
{ id => "3", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC3.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [1, 0.66667, 0.8],
                        "ceafe" => [0.88571, 0.66429, 0.75918],
                        "blanc_sys" => [1, 0.42593, 0.59717] }
},
{ id => "4", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC4.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "5", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC5.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.5, 0.57143],
                        "ceafe" => [0.68889, 0.51667, 0.59048],
                        "blanc_sys" => [0.35227, 0.19048, 0.24716] }
},
{ id => "6", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC6.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.5, 0.57143],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.20870, 0.25817] }
},
{ id => "7", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC7.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "8", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC8.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "9", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC9.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "10", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC10.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.5, 0.36667, 0.42308] }
},
{ id => "11", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC11.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.5, 0.13333, 0.21053] }
},
{ id => "12", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC12.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.22727, 0.11905, 0.15625] }
},
{ id => "13", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC13.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.125, 0.02381, 0.04] }
}
);

1;
