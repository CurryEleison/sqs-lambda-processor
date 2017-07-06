#!/bin/bash
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate
chmod +x runin_venv

