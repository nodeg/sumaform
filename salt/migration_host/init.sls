{% if grains.get('prerelease_repo') %}
prerelease_repo:
  pkgrepo.managed:
    - name: mlm-prerelease
    - baseurl: {{ grains['prerelease_repo'] }}
    - gpgautoimport: True
    - enabled: True
{% endif %}
