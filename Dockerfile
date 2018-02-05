FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGF3eC1hcGIKZGVzY3JpcHRpb246IEFXWCBBUEIgSW1wbGVtZW50\
YXRpb24KYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5\
TmFtZTogQVdYIChBUEIpCiAgbG9uZ0Rlc2NyaXB0aW9uOiBBbiBBUEIgdGhhdCBkZXBsb3lzIEFX\
WAogIGRvY3VtZW50YXRpb25Vcmw6IGh0dHBzOi8vZG9jcy5hbnNpYmxlLmNvbS9hbnNpYmxlLXRv\
d2VyLwogIGRlcGVuZGVuY2llczogWydkb2NrZXIuaW8vbG9yYnVzY29kZS9hd3gtYXBiOmxhdGVz\
dCddCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246IEFuIEFQQiB0aGF0\
IGRlcGxveXMgQVdYCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5h\
bWU6IERlZmF1bHQKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gZGVwbG95cyBhIHNp\
bmdsZSBBV1ggaW5zdGFuY2UuIFJlcXVpcmVzIGEgUG9zdGdyZVNRTCBEQiB0byBiaW5kIHRvLgog\
ICAgICBjb3N0OiAkMC4wMAogICAgcGFyYW1ldGVyczoKICAgICAgLSBuYW1lOiBhd3hfd2ViX2lt\
YWdlCiAgICAgICAgdGl0bGU6IEFXWCBXZWIgSW1hZ2UKICAgICAgICBkZXNjcmlwdGlvbjogRG9j\
a2VyIEltYWdlIG9mIEFXWCBXZWIKICAgICAgICBkZWZhdWx0OiBhbnNpYmxlL2F3eF93ZWIKICAg\
ICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogVHJ1ZQogICAgICAtIG5hbWU6IGF3\
eF93ZWJfaW1hZ2VfdGFnCiAgICAgICAgdGl0bGU6IEFXWCBXZWIgSW1hZ2UgVGFnCiAgICAgICAg\
ZGVzY3JpcHRpb246IEFXWCBXZWIgRG9ja2VyIEltYWdlIFZlcnNpb24KICAgICAgICBkZWZhdWx0\
OiAxLjAuMwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAg\
IC0gbmFtZTogYXd4X3Rhc2tfaW1hZ2UKICAgICAgICB0aXRsZTogQVdYIFRhc2sgSW1hZ2UKICAg\
ICAgICBkZXNjcmlwdGlvbjogRG9ja2VyIEltYWdlIG9mIEFXWCBUYXNrCiAgICAgICAgZGVmYXVs\
dDogYW5zaWJsZS9hd3hfdGFzawogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVk\
OiBUcnVlCiAgICAgIC0gbmFtZTogYXd4X3Rhc2tfaW1hZ2VfdGFnCiAgICAgICAgdGl0bGU6IEFX\
WCBUYXNrIEltYWdlIFRhZwogICAgICAgIGRlc2NyaXB0aW9uOiBBV1ggVGFzayBEb2NrZXIgSW1h\
Z2UgVmVyc2lvbgogICAgICAgIGRlZmF1bHQ6IDEuMC4zCiAgICAgICAgdHlwZTogc3RyaW5nCiAg\
ICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgLSBuYW1lOiBhd3hfYWRtaW5fdXNlcgogICAgICAg\
IHRpdGxlOiBBV1ggQWRtaW4gVXNlcgogICAgICAgIGRlc2NyaXB0aW9uOiBBV1ggQWRtaW4gVXNl\
cgogICAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVx\
dWlyZWQ6IFRydWUKICAgICAgLSBuYW1lOiBhd3hfYWRtaW5fcGFzc3dvcmQKICAgICAgICB0aXRs\
ZTogQVdYIEFkbWluIFBhc3N3b3JkCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGlzcGxh\
eV90eXBlOiBwYXNzd29yZAogICAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgIC0gbmFtZTogYXd4\
X3NlY3JldF9rZXkKICAgICAgICB0aXRsZTogQVdYIFNlY3JldCBLZXkKICAgICAgICBkZWZhdWx0\
OiBhd3hzZWNyZXQKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogVHJ1ZQo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
