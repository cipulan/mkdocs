FROM squidfunk/mkdocs-material

EXPOSE 8000

COPY mkdocs.yml ./
WORKDIR /docs
# VOLUME /docs

# CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
