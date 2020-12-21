// Generated by vproto - Do not modify
module proto

import emily33901.vproto

pub struct CGameServers_GetServerList_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	filter         string
	limit          u32 = 100
}

pub fn (o &CGameServers_GetServerList_Request) pack() []byte {
	mut res := []byte{}
	if o.filter != '' {
		res << vproto.pack_string_field(o.filter, 1)
	}
	if o.limit != u32(0) {
		res << vproto.pack_uint32_field(o.limit, 2)
	}
	return res
}

pub fn cgameservers_getserverlist_request_unpack(buf []byte) ?CGameServers_GetServerList_Request {
	mut res := zzz_vproto_internal_new_cgameservers_getserverlist_request()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				i, res.filter = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			2 {
				i, res.limit = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CGameServers_GetServerList_Request) eq(b CGameServers_GetServerList_Request) bool {
	return true && a.filter == b.filter && a.limit == b.limit
}

[inline]
pub fn (a CGameServers_GetServerList_Request) ne(b CGameServers_GetServerList_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CGameServers_GetServerList_Request) eq(b []CGameServers_GetServerList_Request) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CGameServers_GetServerList_Request) ne(b []CGameServers_GetServerList_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cgameservers_getserverlist_request() CGameServers_GetServerList_Request {
	return CGameServers_GetServerList_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cgameservers_getserverlist_request(o CGameServers_GetServerList_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cgameservers_getserverlist_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CGameServers_GetServerList_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := cgameservers_getserverlist_request_unpack(v) ?
	return i, unpacked
}

pub struct CGameServers_GetServerList_Response_Server {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	addr           string
	gameport       u32
	specport       u32
	steamid        u64
	name           string
	appid          u32
	gamedir        string
	version        string
	product        string
	region         int
	players        int
	max_players    int
	bots           int
	map            string
	secure         bool
	dedicated      bool
	os             string
	gametype       string
}

pub fn (o &CGameServers_GetServerList_Response_Server) pack() []byte {
	mut res := []byte{}
	if o.addr != '' {
		res << vproto.pack_string_field(o.addr, 1)
	}
	if o.gameport != u32(0) {
		res << vproto.pack_uint32_field(o.gameport, 2)
	}
	if o.specport != u32(0) {
		res << vproto.pack_uint32_field(o.specport, 3)
	}
	if o.steamid != u64(0) {
		res << vproto.pack_64bit_field(o.steamid, 4)
	}
	if o.name != '' {
		res << vproto.pack_string_field(o.name, 5)
	}
	if o.appid != u32(0) {
		res << vproto.pack_uint32_field(o.appid, 6)
	}
	if o.gamedir != '' {
		res << vproto.pack_string_field(o.gamedir, 7)
	}
	if o.version != '' {
		res << vproto.pack_string_field(o.version, 8)
	}
	if o.product != '' {
		res << vproto.pack_string_field(o.product, 9)
	}
	if o.region != int(0) {
		res << vproto.pack_int32_field(o.region, 10)
	}
	if o.players != int(0) {
		res << vproto.pack_int32_field(o.players, 11)
	}
	if o.max_players != int(0) {
		res << vproto.pack_int32_field(o.max_players, 12)
	}
	if o.bots != int(0) {
		res << vproto.pack_int32_field(o.bots, 13)
	}
	if o.map != '' {
		res << vproto.pack_string_field(o.map, 14)
	}
	if o.secure != false {
		res << vproto.pack_bool_field(o.secure, 15)
	}
	if o.dedicated != false {
		res << vproto.pack_bool_field(o.dedicated, 16)
	}
	if o.os != '' {
		res << vproto.pack_string_field(o.os, 17)
	}
	if o.gametype != '' {
		res << vproto.pack_string_field(o.gametype, 18)
	}
	return res
}

pub fn cgameservers_getserverlist_response_server_unpack(buf []byte) ?CGameServers_GetServerList_Response_Server {
	mut res := zzz_vproto_internal_new_cgameservers_getserverlist_response_server()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				i, res.addr = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			2 {
				i, res.gameport = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			3 {
				i, res.specport = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			4 {
				i, res.steamid = vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type) ?
			}
			5 {
				i, res.name = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			6 {
				i, res.appid = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			7 {
				i, res.gamedir = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			8 {
				i, res.version = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			9 {
				i, res.product = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			10 {
				i, res.region = vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			11 {
				i, res.players = vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			12 {
				i, res.max_players = vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			13 {
				i, res.bots = vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			14 {
				i, res.map = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			15 {
				i, res.secure = vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type) ?
			}
			16 {
				i, res.dedicated = vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type) ?
			}
			17 {
				i, res.os = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			18 {
				i, res.gametype = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CGameServers_GetServerList_Response_Server) eq(b CGameServers_GetServerList_Response_Server) bool {
	return true && a.addr == b.addr && a.gameport == b.gameport && a.specport == b.specport &&
		a.steamid == b.steamid && a.name == b.name && a.appid == b.appid && a.gamedir == b.gamedir &&
		a.version == b.version && a.product == b.product && a.region == b.region && a.players == b.players &&
		a.max_players == b.max_players && a.bots == b.bots && a.map == b.map && a.secure == b.secure &&
		a.dedicated == b.dedicated && a.os == b.os && a.gametype == b.gametype
}

[inline]
pub fn (a CGameServers_GetServerList_Response_Server) ne(b CGameServers_GetServerList_Response_Server) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CGameServers_GetServerList_Response_Server) eq(b []CGameServers_GetServerList_Response_Server) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CGameServers_GetServerList_Response_Server) ne(b []CGameServers_GetServerList_Response_Server) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cgameservers_getserverlist_response_server() CGameServers_GetServerList_Response_Server {
	return CGameServers_GetServerList_Response_Server{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cgameservers_getserverlist_response_server(o CGameServers_GetServerList_Response_Server, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cgameservers_getserverlist_response_server(buf []byte, tag_wiretype vproto.WireType) ?(int, CGameServers_GetServerList_Response_Server) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := cgameservers_getserverlist_response_server_unpack(v) ?
	return i, unpacked
}

pub struct CGameServers_GetServerList_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	servers        []CGameServers_GetServerList_Response_Server
}

pub fn (o &CGameServers_GetServerList_Response) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.servers {
		res <<
			zzz_vproto_internal_pack_cgameservers_getserverlist_response_server(x, 1)
	}
	return res
}

pub fn cgameservers_getserverlist_response_unpack(buf []byte) ?CGameServers_GetServerList_Response {
	mut res := zzz_vproto_internal_new_cgameservers_getserverlist_response()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				// [packed=false]
				ii, v := zzz_vproto_internal_unpack_cgameservers_getserverlist_response_server(cur_buf,
					tag_wiretype.wire_type) ?
				res.servers << v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CGameServers_GetServerList_Response) eq(b CGameServers_GetServerList_Response) bool {
	return true && a.servers.eq(b.servers)
}

[inline]
pub fn (a CGameServers_GetServerList_Response) ne(b CGameServers_GetServerList_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CGameServers_GetServerList_Response) eq(b []CGameServers_GetServerList_Response) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CGameServers_GetServerList_Response) ne(b []CGameServers_GetServerList_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cgameservers_getserverlist_response() CGameServers_GetServerList_Response {
	return CGameServers_GetServerList_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cgameservers_getserverlist_response(o CGameServers_GetServerList_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cgameservers_getserverlist_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CGameServers_GetServerList_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := cgameservers_getserverlist_response_unpack(v) ?
	return i, unpacked
}

pub struct CGameServers_GetServerSteamIDsByIP_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	server_ips     []string
}

pub fn (o &CGameServers_GetServerSteamIDsByIP_Request) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.server_ips {
		res << vproto.pack_string_field(x, 1)
	}
	return res
}

pub fn cgameservers_getserversteamidsbyip_request_unpack(buf []byte) ?CGameServers_GetServerSteamIDsByIP_Request {
	mut res := zzz_vproto_internal_new_cgameservers_getserversteamidsbyip_request()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				// [packed=false]
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
				res.server_ips << v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CGameServers_GetServerSteamIDsByIP_Request) eq(b CGameServers_GetServerSteamIDsByIP_Request) bool {
	return true && a.server_ips == b.server_ips
}

[inline]
pub fn (a CGameServers_GetServerSteamIDsByIP_Request) ne(b CGameServers_GetServerSteamIDsByIP_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CGameServers_GetServerSteamIDsByIP_Request) eq(b []CGameServers_GetServerSteamIDsByIP_Request) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CGameServers_GetServerSteamIDsByIP_Request) ne(b []CGameServers_GetServerSteamIDsByIP_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cgameservers_getserversteamidsbyip_request() CGameServers_GetServerSteamIDsByIP_Request {
	return CGameServers_GetServerSteamIDsByIP_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cgameservers_getserversteamidsbyip_request(o CGameServers_GetServerSteamIDsByIP_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cgameservers_getserversteamidsbyip_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CGameServers_GetServerSteamIDsByIP_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := cgameservers_getserversteamidsbyip_request_unpack(v) ?
	return i, unpacked
}

pub struct CGameServers_IPsWithSteamIDs_Response_Server {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	addr           string
	steamid        u64
}

pub fn (o &CGameServers_IPsWithSteamIDs_Response_Server) pack() []byte {
	mut res := []byte{}
	if o.addr != '' {
		res << vproto.pack_string_field(o.addr, 1)
	}
	if o.steamid != u64(0) {
		res << vproto.pack_64bit_field(o.steamid, 2)
	}
	return res
}

pub fn cgameservers_ipswithsteamids_response_server_unpack(buf []byte) ?CGameServers_IPsWithSteamIDs_Response_Server {
	mut res := zzz_vproto_internal_new_cgameservers_ipswithsteamids_response_server()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				i, res.addr = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			2 {
				i, res.steamid = vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type) ?
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CGameServers_IPsWithSteamIDs_Response_Server) eq(b CGameServers_IPsWithSteamIDs_Response_Server) bool {
	return true && a.addr == b.addr && a.steamid == b.steamid
}

[inline]
pub fn (a CGameServers_IPsWithSteamIDs_Response_Server) ne(b CGameServers_IPsWithSteamIDs_Response_Server) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CGameServers_IPsWithSteamIDs_Response_Server) eq(b []CGameServers_IPsWithSteamIDs_Response_Server) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CGameServers_IPsWithSteamIDs_Response_Server) ne(b []CGameServers_IPsWithSteamIDs_Response_Server) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cgameservers_ipswithsteamids_response_server() CGameServers_IPsWithSteamIDs_Response_Server {
	return CGameServers_IPsWithSteamIDs_Response_Server{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cgameservers_ipswithsteamids_response_server(o CGameServers_IPsWithSteamIDs_Response_Server, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cgameservers_ipswithsteamids_response_server(buf []byte, tag_wiretype vproto.WireType) ?(int, CGameServers_IPsWithSteamIDs_Response_Server) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := cgameservers_ipswithsteamids_response_server_unpack(v) ?
	return i, unpacked
}

pub struct CGameServers_IPsWithSteamIDs_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	servers        []CGameServers_IPsWithSteamIDs_Response_Server
}

pub fn (o &CGameServers_IPsWithSteamIDs_Response) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.servers {
		res <<
			zzz_vproto_internal_pack_cgameservers_ipswithsteamids_response_server(x, 1)
	}
	return res
}

pub fn cgameservers_ipswithsteamids_response_unpack(buf []byte) ?CGameServers_IPsWithSteamIDs_Response {
	mut res := zzz_vproto_internal_new_cgameservers_ipswithsteamids_response()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				// [packed=false]
				ii, v := zzz_vproto_internal_unpack_cgameservers_ipswithsteamids_response_server(cur_buf,
					tag_wiretype.wire_type) ?
				res.servers << v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CGameServers_IPsWithSteamIDs_Response) eq(b CGameServers_IPsWithSteamIDs_Response) bool {
	return true && a.servers.eq(b.servers)
}

[inline]
pub fn (a CGameServers_IPsWithSteamIDs_Response) ne(b CGameServers_IPsWithSteamIDs_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CGameServers_IPsWithSteamIDs_Response) eq(b []CGameServers_IPsWithSteamIDs_Response) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CGameServers_IPsWithSteamIDs_Response) ne(b []CGameServers_IPsWithSteamIDs_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cgameservers_ipswithsteamids_response() CGameServers_IPsWithSteamIDs_Response {
	return CGameServers_IPsWithSteamIDs_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cgameservers_ipswithsteamids_response(o CGameServers_IPsWithSteamIDs_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cgameservers_ipswithsteamids_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CGameServers_IPsWithSteamIDs_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := cgameservers_ipswithsteamids_response_unpack(v) ?
	return i, unpacked
}

pub struct CGameServers_GetServerIPsBySteamID_Request {
mut:
	unknown_fields  []vproto.UnknownField
pub mut:
	server_steamids []u64
}

pub fn (o &CGameServers_GetServerIPsBySteamID_Request) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.server_steamids {
		res << vproto.pack_64bit_field(x, 1)
	}
	return res
}

pub fn cgameservers_getserveripsbysteamid_request_unpack(buf []byte) ?CGameServers_GetServerIPsBySteamID_Request {
	mut res := zzz_vproto_internal_new_cgameservers_getserveripsbysteamid_request()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				// [packed=false]
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type) ?
				res.server_steamids << v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CGameServers_GetServerIPsBySteamID_Request) eq(b CGameServers_GetServerIPsBySteamID_Request) bool {
	return true && a.server_steamids == b.server_steamids
}

[inline]
pub fn (a CGameServers_GetServerIPsBySteamID_Request) ne(b CGameServers_GetServerIPsBySteamID_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CGameServers_GetServerIPsBySteamID_Request) eq(b []CGameServers_GetServerIPsBySteamID_Request) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CGameServers_GetServerIPsBySteamID_Request) ne(b []CGameServers_GetServerIPsBySteamID_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cgameservers_getserveripsbysteamid_request() CGameServers_GetServerIPsBySteamID_Request {
	return CGameServers_GetServerIPsBySteamID_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cgameservers_getserveripsbysteamid_request(o CGameServers_GetServerIPsBySteamID_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cgameservers_getserveripsbysteamid_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CGameServers_GetServerIPsBySteamID_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := cgameservers_getserveripsbysteamid_request_unpack(v) ?
	return i, unpacked
}
