rm -rf pkg_dir
mkdir pkg_dir
cd pkg_dir
wget https://boostorg.jfrog.io/artifactory/main/release/1.83.0/source/boost_1_83_0.tar.gz 
wget https://shibboleth.net/downloads/log4shib/2.0.1/log4shib-2.0.1.tar.gz
wget https://shibboleth.net/downloads/xerces-c/xerces-c-3.2.4.tar.bz2
wget https://dlcdn.apache.org/santuario/c-library/xml-security-c-2.0.4.tar.gz
wget http://shibboleth.net/downloads/c++-opensaml/3.2.1/xmltooling-3.2.4.tar.gz
wget http://shibboleth.net/downloads/c++-opensaml/3.2.1/opensaml-3.2.1.tar.gz
wget https://www.openssl.org/source/openssl-3.0.10.tar.gz
wget https://shibboleth.net/downloads/service-provider/3.4.1/shibboleth-sp-3.4.1.tar.gz

cd ../

docker pull centos:7
docker build -f Dockerfile.public -t shibboleth-sp . --progress=plain