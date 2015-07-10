FROM openshift3/ruby-20-rhel7

USER default
EXPOSE 8080

ENV RACK_ENV production
ENV RAILS_ENV production
COPY . /opt/openshift/src/
RUN scl enable ror40 "bundle install"
CMD ["scl", "enable", "ror40", "./run.sh"]
