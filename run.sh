#!/bin/sh

VERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)

rm -rf apache-maven-* &&\

mvn clean package  -DskipTests -Drat.skip=true &&\

unzip apache-maven/target/apache-maven-$VERSION-bin.zip  -d . &&\

/Users/wangqichao/git/maven/apache-maven-$VERSION/bin/mvn  -f /Users/wangqichao/sourcetree/selfweb/pom.xml compile
