#include <core.p4>

control Ingress(inout Headers h, inout Meta m, inout standard_metadata_t sm) {
  apply { }
}

V1Switch(Hello(), Hello(), main) main;

