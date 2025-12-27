$TTL 300
$ORIGIN wikigrid.com.

@		SOA ns1.wikiforge.net. hostmaster.wikiforge.net. (
		20240605000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp
*		DYNA	geoip!cp

; Name servers
@		NS	ns1.wikiforge.net.
@		NS	ns2.wikiforge.net.

; Mail exchangers
@		MX	1	mail.wikiforge.xyz.

; Mail policies

; Mail autodiscovery

;; DKIM - Policy: Mail may be signed. Not required.

;; DMARC - Policy: Reject - unauthorized mail will not send, remote SMTPs will just drop the mail.

; Servers

; Services

; load balancers

; Other

; Miscellaneous
