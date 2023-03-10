FROM squidfunk/mkdocs-material

EXPOSE 8000

WORKDIR /docs
VOLUME /docs

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]