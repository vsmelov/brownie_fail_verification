# brownie-fail-verification

```bash
virtualenv venv -p python3.9
. venv/bin/activate
pip install -r requirements.txt
brownie compile
export BRAVE_MAIN_PASS='xxx'

#ok
brownie run scripts/deploy_and_verify_ok.py --network polygon-main
#Running 'scripts/deploy_and_verify_ok.py::main'...
#Transaction sent: 0x3630d8580c507e32d5aad44f23a09156ed91e441352e9710c36e7a0c9af7257c
#  Gas price: 88.070317197 gwei   Gas limit: 108170   Nonce: 140
#  VerificationOK.constructor confirmed   Block: 40759336   Gas used: 98337 (90.91%)
#  VerificationOK deployed at: 0xf0E117a7DF38889fCE1728d87b18f4C2e3f6cFc2
#
#Waiting for https://api.polygonscan.com/api to process contract...
#Verification submitted successfully. Waiting for result...
#Verification complete. Result: Pass - Verified


# fail
brownie run scripts/deploy_and_verify_fail.py --network polygon-main
#Running 'scripts/deploy_and_verify_fail.py::main'...
#Transaction sent: 0xd3cbb5004acd636cb14738034f091afd98d74d1b7e4f2d8ae1e954b3d9a9beb2
#  Gas price: 114.379120423 gwei   Gas limit: 108170   Nonce: 141
#  VerificationFail.constructor confirmed   Block: 40759442   Gas used: 98337 (90.91%)
#  VerificationFail deployed at: 0x1AF0b97581d883B9260182d00f8619e5B3a4f7d4
#
#Verification submitted successfully. Waiting for result...
#Verification complete. Result: Fail - Unable to verify

```