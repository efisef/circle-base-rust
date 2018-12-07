FROM rust:slim
MAINTAINER Luke Tomlin "luke@efisef.io"

RUN apt-get update
RUN yes | apt-get install libssl-dev pkg-config
RUN cargo install sccache
ENV RUSTC_WRAPPER=sccache
