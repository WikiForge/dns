$TTL 300
$ORIGIN obeymewiki.com.

@		SOA ns1.miraheze.org. hostmaster.miraheze.org. (
		20220318000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp

; Name servers
@		NS	ns1.miraheze.org.
@		NS	ns2.miraheze.org.

; Mail exchangers
@		MX	1	ASPMX.L.GOOGLE.COM.
@		MX	5	ALT1.ASPMX.L.GOOGLE.COM.
@		MX	10	ALT3.ASPMX.L.GOOGLE.COM.

; CAA (issue: letsencrypt.com, iodef: operations)
@		TYPE257 \# 22 000569737375656C657473656E63727970742E6F7267
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Servers

; Services
www		DYNA	geoip!cp

; load balancers

; Other