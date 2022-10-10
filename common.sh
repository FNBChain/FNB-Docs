cd /root/mainnet1/docs/
 mkdocs build && rm -rf /home/fusd_docs/site && cp -avr /root/mainnet1/docs/site /home/fusd_docs && chcon -Rt httpd_sys_content_t /home/fusd_docs