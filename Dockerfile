FROM anapsix/alpine-java:jre8  
MAINTAINER firewarm LightingLiu <liuyg@liuyingguang.cn>  
ENV ES_PKG_NAME elasticsearch-2.3.3  
ADD $ES_PKG_NAME.tar.gz /usr/share/  
ADD elasticsearch/ /usr/share/$ES_PKG_NAME/  
RUN cd /usr/share/ && \  
mv $ES_PKG_NAME elasticsearch && \  
chmod +x /usr/share/elasticsearch/bin/*  
ENV PATH /usr/share/elasticsearch/bin:$PATH  
# Define default command.  
CMD ["elasticsearch"]  
EXPOSE 9200  
EXPOSE 9300  
