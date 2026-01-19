echo "Run nuclei and read targets from targets.txt and do CVE templates only"
nuclei -l targets.txt -tags cve

echo "Run nuclei and read targets from targets.txt with all templates"
nuclei -l targets.txt

echo "Run nuclei and target a single host or web directory. Kubernetes and other applications sometimes need more info to be more accurate"
nuclei -u $target
nuclei -u https://$target/info.txt


