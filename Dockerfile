FROM python:3-onbuild

CMD krill++ -S sources.txt -u 30
