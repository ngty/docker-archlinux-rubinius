FROM daprlabs/archlinux
MAINTAINER ngty

# Fix locale agony
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Install ruby & friends
RUN pacman --noconfirm -Syy rubinius

# Installs base dependencies
ENV PATH /usr/lib/rubinius/gems/bin:$PATH
RUN rbx gem install bundler

