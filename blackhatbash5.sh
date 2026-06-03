#!/bin/bash
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "El comando lzl fallo"