#!/bin/sh

sh -c "for i in {0..100}; do ( echo \$i; sleep 0.005 ); done | ./loadbar"
sh -c "for i in {0..100}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading"
sh -c "for i in {0..100}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading -p"
sh -c "for i in {0..100}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading -p -v"
sh -c "for i in {0..300}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading -p -v -m 300"
sh -c "for i in {0..300}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading -p -v -m 300 -s 70"
sh -c "for i in {0..300}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading -p -v -m 300 -s 70 -n"
sh -c "for i in {0..300}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading -p -v -m 300 -s 70 -n -b \"-\""
sh -c "for i in {0..300}; do ( echo \$i; sleep 0.005 ); done | ./loadbar -t Loading -p -v -m 300 -s 70 -n -b \"-\" -f \"#\""
