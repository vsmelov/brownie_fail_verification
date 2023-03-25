import os
import time
from brownie import *

assert os.environ['POLYGONSCAN_TOKEN'].startswith('6I')


def main():
    deployer = accounts.load('brave_main', os.environ['BRAVE_MAIN_PASS'])
    contract = VerificationOK.deploy({"from": deployer})
    time.sleep(30)
    VerificationOK.publish_source(contract)
