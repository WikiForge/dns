$TTL 300
$ORIGIN dcmultiversewiki.com.

@		SOA ns1.wikiforge.net. hostmaster.wikiforge.net. (
		20231222000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp

; Name servers
@		NS	ns1.wikiforge.net.
@		NS	ns2.wikiforge.net.

; CAA (issue: letsencrypt.com, iodef: mailto:sre@wikiforge.net)
@		TYPE257	\# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257	\# 31 0005696F6465666D61696C746F3A7372654077696B69666F7267652E6E6574

; Mail exchangers

; Servers

; Services
www		    CNAME	mw-lb.your.wf.


; load balancers

; Other
_atproto.thedemon08 TXT		"did=did:plc:vberkt3qnvpdwzsbhsvjhghs"
