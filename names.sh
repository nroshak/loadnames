#!/usr/bin/bash
export TWO_TASK=orcl
for i in {1880..2014}
do
  echo "generating yob$i.ctl"
  sed s/%%YEAR%%/$i/g names.ctl > yob$i.ctl
  echo "loading yob$i"
  sqlldr username/password CONTROL=yob$i.ctl
  echo "done $i"
done
