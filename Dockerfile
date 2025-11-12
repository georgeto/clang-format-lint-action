FROM python:3.9-alpine

ARG GH_REPO="muttleyxd/clang-tools-static-binaries"
ARG GH_RELEASE="master-46b8640"
ENV GH_URL="https://github.com/${GH_REPO}/releases/download/${GH_RELEASE}"

ADD ${GH_URL}/clang-format-3.9_linux-amd64  \
    ${GH_URL}/clang-format-4_linux-amd64    \
    ${GH_URL}/clang-format-5_linux-amd64    \
    ${GH_URL}/clang-format-6_linux-amd64    \
    ${GH_URL}/clang-format-7_linux-amd64    \
    ${GH_URL}/clang-format-8_linux-amd64    \
    ${GH_URL}/clang-format-9_linux-amd64    \
    ${GH_URL}/clang-format-10_linux-amd64   \
    ${GH_URL}/clang-format-11_linux-amd64   \
    ${GH_URL}/clang-format-12_linux-amd64   \
    ${GH_URL}/clang-format-12.0.1_linux-amd64   \
    ${GH_URL}/clang-format-13_linux-amd64   \
    ${GH_URL}/clang-format-14_linux-amd64   \
    ${GH_URL}/clang-format-15_linux-amd64   \
    ${GH_URL}/clang-format-16_linux-amd64   \
    ${GH_URL}/clang-format-17_linux-amd64   \
    ${GH_URL}/clang-format-18_linux-amd64   \
    ${GH_URL}/clang-format-19_linux-amd64   \
    clang-format_linux.sha512sums           \
    entrypoint.sh                           \
    run-clang-format.py                     \
    /usr/local/bin/

RUN cd /usr/local/bin && sha512sum -c clang-format_linux.sha512sums && \
    chmod +x /usr/local/bin/clang-format-*

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
