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
                        "bcub" => [6/6, 6/6, 1],
                        "ceafm" => [1, 1, 1],
                        "ceafe" => [1, 1, 1],
                        "blanc_sys" => [1, 1, 1] }
},
{ id => "2", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC2.response",
  expected_metrics => { "muc" => [1/3, 1/1, 0.5], 
                        "bcub" => [(7/3)/6, 3/3, 14/25],
                        "ceafm" => [0.5, 1, 0.66667],
                        "ceafe" => [0.6, 0.9, 0.72],
                        "blanc_sys" => [0.21591, 1, 0.35385] }
},
{ id => "3", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC3.response",
  expected_metrics => { "muc" => [3/3, 3/5, 0.75], 
                        "bcub" => [6/6, (4+7/12)/9, 110/163],
                        "ceafm" => [1, 0.66667, 0.8],
                        "ceafe" => [0.88571, 0.66429, 0.75918],
                        "blanc_sys" => [1, 0.42593, 0.59717] }
},
{ id => "4", 
  key_file => "DataFiles/TestCase.key",
  response_file => "DataFiles/TC4.response",
  expected_metrics => { "muc" => [1/3, 1/3, 1/3], 
                        "bcub" => [(3+1/3)/6, (1+4/3+1/2)/7, 2*(5/9)*(17/42)/((5/9)+(17/42))],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "5", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC5.response",
  expected_metrics => { "muc" => [1/3, 1/4, 2/7], 
                        "bcub" => [(3+1/3)/6, 2.5/8, 2*(5/9)*(5/16)/((5/9)+(5/16))],
                        "ceafm" => [0.66667, 0.5, 0.57143],
                        "ceafe" => [0.68889, 0.51667, 0.59048],
                        "blanc_sys" => [0.35227, 0.19048, 0.24716] }
},
{ id => "6", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC6.response",
  expected_metrics => { "muc" => [1/3, 1/4, 2/7],
                        "bcub" => [(10/3)/6, (1+4/3+1/2)/8, 2*(5/9)*(17/48)/((5/9)+(17/48))],
                        "ceafm" => [0.66667, 0.5, 0.57143],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.20870, 0.25817] }
},
{ id => "7", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC7.response",
  expected_metrics => { "muc" => [1/3, 1/3, 1/3], 
                        "bcub" => [(10/3)/6, (1+4/3+1/2)/7, 2*(5/9)*(17/42)/((5/9)+(17/42))],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "8", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC8.response",
  expected_metrics => { "muc" => [1/3, 1/3, 1/3], 
                        "bcub" => [(10/3)/6, (1+4/3+1/2)/7, 2*(5/9)*(17/42)/((5/9)+(17/42))],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "9", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC9.response",
  expected_metrics => { "muc" => [1/3, 1/3, 1/3],
                        "bcub" => [(10/3)/6, (1+4/3+1/2)/7, 2*(5/9)*(17/42)/((5/9)+(17/42))],
                        "ceafm" => [0.66667, 0.57143, 0.61538],
                        "ceafe" => [0.73333, 0.55, 0.62857],
                        "blanc_sys" => [0.35227, 0.27206, 0.30357] }
},
{ id => "10", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC10.response",
  expected_metrics => { "muc" => [0, 0, 0], 
                        "bcub" => [3/6, 6/6, 2/3],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.5, 0.36667, 0.42308] }
},
{ id => "11", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC11.response",
  expected_metrics => { "muc" => [3/3, 3/5, 6/8], 
                        "bcub" => [6/6, (1/6+2*2/6+3*3/6)/6, 14/25],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.5, 0.13333, 0.21053] }
},
{ id => "12", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC12.response",
  expected_metrics => { "muc" => [0, 0, 0], 
                        "bcub" => [(1+1/2+2/3)/6, 4/7, 2*(13/36)*(4/7)/((13/36)+(4/7))],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.22727, 0.11905, 0.15625] }
},
{ id => "13", 
  key_file => "DataFiles/TestCase.key", 
  response_file => "DataFiles/TC13.response",
  expected_metrics => { "muc" => [1/3, 1/6, 2/9], 
                        "bcub" => [(1+1/2+2*2/3)/6, (1/7+1/7+2*2/7)/7, 2*(17/36)*(6/49)/((17/36)+(6/49))],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [0.125, 0.02381, 0.04] }
},
{ id => "14", 
  key_file => "DataFiles/TC14.key", 
  response_file => "DataFiles/TC14.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [1/2 * (1/4 + 1/3), 1/2 * (1/4 + 1/3), 1/2 * (1/4 + 1/3)] }
},
{ id => "15", 
  key_file => "DataFiles/TC15.key", 
  response_file => "DataFiles/TC15.response",
  expected_metrics => { #"muc" => [1, 1, 1], 
                        #"bcub" => [1, 1, 1],
                        #”ceafm" => [1, 1, 1],
                        #”ceafe" => [1, 1, 1],
                        "blanc_sys" => [1/2 * (2/5 + 10/16), 1/2 * (2/5 + 10/16), 1/2 * (2/5 + 10/16)] }
},
{ id => "16", 
		key_file => "DataFiles/TC16.key", 
		response_file => "DataFiles/TC16.response",
 		expected_metrics => { "muc" => [9/9, 9/10, 2*(9/9)*(9/10)/(9/9+9/10)], 
                          "bcub" => [12/12, 16/21, 2*(12/12)*(16/21)/(12/12+16/21)],
                          #”ceafm" => [1, 1, 1],
                          #”ceafe" => [1, 1, 1],
                          # "blanc_sys" => [1, 1, 1]
                        }
},
{ id => "17", 
		key_file => "DataFiles/TC17.key", 
		response_file => "DataFiles/TC17.response",
 		expected_metrics => { "muc" => [9/9, 9/10, 2*(9/9)*(9/10)/(9/9+9/10)], 
                          "bcub" => [1, 7/12, 2*1*(7/12)/(1+7/12)],
                          #”ceafm" => [1, 1, 1],
                          #”ceafe" => [1, 1, 1],
                          # "blanc_sys" => [1, 1, 1]
                        }
},
{ id => "17", 
		key_file => "DataFiles/TC17.key", 
		response_file => "DataFiles/TC17.response",
 		expected_metrics => { "muc" => [9/9, 9/10, 2*(9/9)*(9/10)/(9/9+9/10)], 
                          "bcub" => [1, 7/12, 2*1*(7/12)/(1+7/12)],
                          #”ceafm" => [1, 1, 1],
                          #”ceafe" => [1, 1, 1],
                          # "blanc_sys" => [1, 1, 1]
                        }
},
{ id => "17", 
		key_file => "DataFiles/TC17.key", 
		response_file => "DataFiles/TC17.response",
 		expected_metrics => { "muc" => [9/9, 9/10, 2*(9/9)*(9/10)/(9/9+9/10)], 
                          "bcub" => [1, 7/12, 2*1*(7/12)/(1+7/12)],
                          #”ceafm" => [1, 1, 1],
                          #”ceafe" => [1, 1, 1],
                          # "blanc_sys" => [1, 1, 1]
                        }
},
{ id => "18", 
		key_file => "DataFiles/TC18.key", 
		response_file => "DataFiles/TC18.response",
 		expected_metrics => { "muc" => [2/3, 2/2, 2*(2/3)*(2/2)/(2/3+2/2)] ,
                          #"bcub" => ,
                          #”ceafm" => ,
                          #”ceafe" => ,
                          # "blanc_sys" => 
                        }
},
{ id => "19", 
		key_file => "DataFiles/TC19.key", 
		response_file => "DataFiles/TC19.response",
 		expected_metrics => { "muc" => [2/2, 2/3, 2*(2/2)*(2/3)/(2/2+2/3)],
                          #"bcub" => ,
                          #”ceafm" => ,
                          #”ceafe" => ,
                          # "blanc_sys" => 
                        }
},
{ id => "20", 
		key_file => "DataFiles/TC20.key", 
		response_file => "DataFiles/TC20.response",
 		expected_metrics => { "muc" => [1, 1, 1],
                          #"bcub" => ,
                          #”ceafm" => ,
                          #”ceafe" => ,
                          # "blanc_sys" => 
                        }
},
{ id => "21", 
		key_file => "DataFiles/TC21.key", 
		response_file => "DataFiles/TC21.response",
 		expected_metrics => { "muc" => [2/3, 2/2, 2*(2/3)*(2/2)/(2/3+2/2)],
                          #"bcub" => ,
                          #”ceafm" => ,
                          #”ceafe" => ,
                          # "blanc_sys" => 
                        }
},
{ id => "22", 
		key_file => "DataFiles/TC22.key", 
		response_file => "DataFiles/TC22.response",
 		expected_metrics => { "muc" => [1/2, 1/1, 2*(1/2)*(1/1)/(1/2+1/1)],
                          #"bcub" => ,
                          #”ceafm" => ,
                          #”ceafe" => ,
                          # "blanc_sys" => 
                        }
},
{ id => "23", 
		key_file => "DataFiles/TC23.key", 
		response_file => "DataFiles/TC23.response",
 		expected_metrics => { "muc" => [3/6, 3/6, 3/6],
                          #"bcub" => ,
                          #”ceafm" => ,
                          #”ceafe" => ,
                          # "blanc_sys" => 
                        }
},
{ id => "24", 
		key_file => "DataFiles/TC24.key", 
		response_file => "DataFiles/TC24.response",
 		expected_metrics => { "muc" => [2/5, 2/4, 2*(2/5)*(2/4)/(2/5+2/4)],
                          #"bcub" => ,
                          #”ceafm" => ,
                          #”ceafe" => ,
                          # "blanc_sys" => 
                        }
}



);

1;





