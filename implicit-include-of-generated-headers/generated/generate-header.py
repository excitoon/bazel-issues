import argparse


parser = argparse.ArgumentParser()
parser.add_argument('out', type=str, help='output file')
args = parser.parse_args()

open(args.out, 'w').close()
