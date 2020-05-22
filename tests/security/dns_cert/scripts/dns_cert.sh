#!/usr/bin/env bash
# shellcheck disable=SC1090,SC2154

# Copyright Istio Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e
set -u
set -o pipefail

source "${REPO_ROOT}/content/en/docs/tasks/security/cert-management/dns-cert/snips.sh"

_run_and_verify_contains snip_check_the_provisioning_of_dns_certificates_1 "$snip_check_the_provisioning_of_dns_certificates_2"

snip_regenerating_a_dns_certificate_1

_run_and_verify_contains snip_regenerating_a_dns_certificate_2 "$snip_regenerating_a_dns_certificate_3"
