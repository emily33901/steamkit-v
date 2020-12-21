// Generated by vproto - Do not modify
module proto

import emily33901.vproto

pub struct CCommunity_GetLinkFilterHashPrefixes_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	hit_type       u32
	count          u32
	start          u64
}

pub fn (o &CCommunity_GetLinkFilterHashPrefixes_Request) pack() []byte {
	mut res := []byte{}
	if o.hit_type != u32(0) {
		res << vproto.pack_uint32_field(o.hit_type, 1)
	}
	if o.count != u32(0) {
		res << vproto.pack_uint32_field(o.count, 2)
	}
	if o.start != u64(0) {
		res << vproto.pack_uint64_field(o.start, 3)
	}
	return res
}

pub fn ccommunity_getlinkfilterhashprefixes_request_unpack(buf []byte) ?CCommunity_GetLinkFilterHashPrefixes_Request {
	mut res := zzz_vproto_internal_new_ccommunity_getlinkfilterhashprefixes_request()
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
				i, res.hit_type = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			2 {
				i, res.count = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			3 {
				i, res.start = vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type) ?
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
pub fn (a CCommunity_GetLinkFilterHashPrefixes_Request) eq(b CCommunity_GetLinkFilterHashPrefixes_Request) bool {
	return true && a.hit_type == b.hit_type && a.count == b.count && a.start == b.start
}

[inline]
pub fn (a CCommunity_GetLinkFilterHashPrefixes_Request) ne(b CCommunity_GetLinkFilterHashPrefixes_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CCommunity_GetLinkFilterHashPrefixes_Request) eq(b []CCommunity_GetLinkFilterHashPrefixes_Request) bool {
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
pub fn (a []CCommunity_GetLinkFilterHashPrefixes_Request) ne(b []CCommunity_GetLinkFilterHashPrefixes_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_ccommunity_getlinkfilterhashprefixes_request() CCommunity_GetLinkFilterHashPrefixes_Request {
	return CCommunity_GetLinkFilterHashPrefixes_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_ccommunity_getlinkfilterhashprefixes_request(o CCommunity_GetLinkFilterHashPrefixes_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_ccommunity_getlinkfilterhashprefixes_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CCommunity_GetLinkFilterHashPrefixes_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := ccommunity_getlinkfilterhashprefixes_request_unpack(v) ?
	return i, unpacked
}

pub struct CCommunity_GetLinkFilterHashPrefixes_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	hash_prefixes  []u32
}

pub fn (o &CCommunity_GetLinkFilterHashPrefixes_Response) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.hash_prefixes {
		res << vproto.pack_uint32_field(x, 1)
	}
	return res
}

pub fn ccommunity_getlinkfilterhashprefixes_response_unpack(buf []byte) ?CCommunity_GetLinkFilterHashPrefixes_Response {
	mut res := zzz_vproto_internal_new_ccommunity_getlinkfilterhashprefixes_response()
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
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
				res.hash_prefixes << v
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
pub fn (a CCommunity_GetLinkFilterHashPrefixes_Response) eq(b CCommunity_GetLinkFilterHashPrefixes_Response) bool {
	return true && a.hash_prefixes == b.hash_prefixes
}

[inline]
pub fn (a CCommunity_GetLinkFilterHashPrefixes_Response) ne(b CCommunity_GetLinkFilterHashPrefixes_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CCommunity_GetLinkFilterHashPrefixes_Response) eq(b []CCommunity_GetLinkFilterHashPrefixes_Response) bool {
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
pub fn (a []CCommunity_GetLinkFilterHashPrefixes_Response) ne(b []CCommunity_GetLinkFilterHashPrefixes_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_ccommunity_getlinkfilterhashprefixes_response() CCommunity_GetLinkFilterHashPrefixes_Response {
	return CCommunity_GetLinkFilterHashPrefixes_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_ccommunity_getlinkfilterhashprefixes_response(o CCommunity_GetLinkFilterHashPrefixes_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_ccommunity_getlinkfilterhashprefixes_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CCommunity_GetLinkFilterHashPrefixes_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := ccommunity_getlinkfilterhashprefixes_response_unpack(v) ?
	return i, unpacked
}

pub struct CCommunity_GetLinkFilterHashes_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	hit_type       u32
	count          u32
	start          u64
}

pub fn (o &CCommunity_GetLinkFilterHashes_Request) pack() []byte {
	mut res := []byte{}
	if o.hit_type != u32(0) {
		res << vproto.pack_uint32_field(o.hit_type, 1)
	}
	if o.count != u32(0) {
		res << vproto.pack_uint32_field(o.count, 2)
	}
	if o.start != u64(0) {
		res << vproto.pack_uint64_field(o.start, 3)
	}
	return res
}

pub fn ccommunity_getlinkfilterhashes_request_unpack(buf []byte) ?CCommunity_GetLinkFilterHashes_Request {
	mut res := zzz_vproto_internal_new_ccommunity_getlinkfilterhashes_request()
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
				i, res.hit_type = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			2 {
				i, res.count = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
			}
			3 {
				i, res.start = vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type) ?
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
pub fn (a CCommunity_GetLinkFilterHashes_Request) eq(b CCommunity_GetLinkFilterHashes_Request) bool {
	return true && a.hit_type == b.hit_type && a.count == b.count && a.start == b.start
}

[inline]
pub fn (a CCommunity_GetLinkFilterHashes_Request) ne(b CCommunity_GetLinkFilterHashes_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CCommunity_GetLinkFilterHashes_Request) eq(b []CCommunity_GetLinkFilterHashes_Request) bool {
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
pub fn (a []CCommunity_GetLinkFilterHashes_Request) ne(b []CCommunity_GetLinkFilterHashes_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_ccommunity_getlinkfilterhashes_request() CCommunity_GetLinkFilterHashes_Request {
	return CCommunity_GetLinkFilterHashes_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_ccommunity_getlinkfilterhashes_request(o CCommunity_GetLinkFilterHashes_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_ccommunity_getlinkfilterhashes_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CCommunity_GetLinkFilterHashes_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := ccommunity_getlinkfilterhashes_request_unpack(v) ?
	return i, unpacked
}

pub struct CCommunity_GetLinkFilterHashes_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	hashes         [][]byte
}

pub fn (o &CCommunity_GetLinkFilterHashes_Response) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.hashes {
		res << vproto.pack_bytes_field(x, 1)
	}
	return res
}

pub fn ccommunity_getlinkfilterhashes_response_unpack(buf []byte) ?CCommunity_GetLinkFilterHashes_Response {
	mut res := zzz_vproto_internal_new_ccommunity_getlinkfilterhashes_response()
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
				ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type) ?
				res.hashes << v
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
pub fn (a CCommunity_GetLinkFilterHashes_Response) eq(b CCommunity_GetLinkFilterHashes_Response) bool {
	return true && a.hashes == b.hashes
}

[inline]
pub fn (a CCommunity_GetLinkFilterHashes_Response) ne(b CCommunity_GetLinkFilterHashes_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CCommunity_GetLinkFilterHashes_Response) eq(b []CCommunity_GetLinkFilterHashes_Response) bool {
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
pub fn (a []CCommunity_GetLinkFilterHashes_Response) ne(b []CCommunity_GetLinkFilterHashes_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_ccommunity_getlinkfilterhashes_response() CCommunity_GetLinkFilterHashes_Response {
	return CCommunity_GetLinkFilterHashes_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_ccommunity_getlinkfilterhashes_response(o CCommunity_GetLinkFilterHashes_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_ccommunity_getlinkfilterhashes_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CCommunity_GetLinkFilterHashes_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := ccommunity_getlinkfilterhashes_response_unpack(v) ?
	return i, unpacked
}

pub struct CCommunity_GetLinkFilterListVersion_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	hit_type       u32
}

pub fn (o &CCommunity_GetLinkFilterListVersion_Request) pack() []byte {
	mut res := []byte{}
	if o.hit_type != u32(0) {
		res << vproto.pack_uint32_field(o.hit_type, 1)
	}
	return res
}

pub fn ccommunity_getlinkfilterlistversion_request_unpack(buf []byte) ?CCommunity_GetLinkFilterListVersion_Request {
	mut res := zzz_vproto_internal_new_ccommunity_getlinkfilterlistversion_request()
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
				i, res.hit_type = vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type) ?
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
pub fn (a CCommunity_GetLinkFilterListVersion_Request) eq(b CCommunity_GetLinkFilterListVersion_Request) bool {
	return true && a.hit_type == b.hit_type
}

[inline]
pub fn (a CCommunity_GetLinkFilterListVersion_Request) ne(b CCommunity_GetLinkFilterListVersion_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CCommunity_GetLinkFilterListVersion_Request) eq(b []CCommunity_GetLinkFilterListVersion_Request) bool {
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
pub fn (a []CCommunity_GetLinkFilterListVersion_Request) ne(b []CCommunity_GetLinkFilterListVersion_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_ccommunity_getlinkfilterlistversion_request() CCommunity_GetLinkFilterListVersion_Request {
	return CCommunity_GetLinkFilterListVersion_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_ccommunity_getlinkfilterlistversion_request(o CCommunity_GetLinkFilterListVersion_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_ccommunity_getlinkfilterlistversion_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CCommunity_GetLinkFilterListVersion_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := ccommunity_getlinkfilterlistversion_request_unpack(v) ?
	return i, unpacked
}

pub struct CCommunity_GetLinkFilterListVersion_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	version        string
	count          u64
}

pub fn (o &CCommunity_GetLinkFilterListVersion_Response) pack() []byte {
	mut res := []byte{}
	if o.version != '' {
		res << vproto.pack_string_field(o.version, 1)
	}
	if o.count != u64(0) {
		res << vproto.pack_uint64_field(o.count, 2)
	}
	return res
}

pub fn ccommunity_getlinkfilterlistversion_response_unpack(buf []byte) ?CCommunity_GetLinkFilterListVersion_Response {
	mut res := zzz_vproto_internal_new_ccommunity_getlinkfilterlistversion_response()
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
				i, res.version = vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type) ?
			}
			2 {
				i, res.count = vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type) ?
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
pub fn (a CCommunity_GetLinkFilterListVersion_Response) eq(b CCommunity_GetLinkFilterListVersion_Response) bool {
	return true && a.version == b.version && a.count == b.count
}

[inline]
pub fn (a CCommunity_GetLinkFilterListVersion_Response) ne(b CCommunity_GetLinkFilterListVersion_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CCommunity_GetLinkFilterListVersion_Response) eq(b []CCommunity_GetLinkFilterListVersion_Response) bool {
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
pub fn (a []CCommunity_GetLinkFilterListVersion_Response) ne(b []CCommunity_GetLinkFilterListVersion_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_ccommunity_getlinkfilterlistversion_response() CCommunity_GetLinkFilterListVersion_Response {
	return CCommunity_GetLinkFilterListVersion_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_ccommunity_getlinkfilterlistversion_response(o CCommunity_GetLinkFilterListVersion_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_ccommunity_getlinkfilterlistversion_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CCommunity_GetLinkFilterListVersion_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype) ?
	mut unpacked := ccommunity_getlinkfilterlistversion_response_unpack(v) ?
	return i, unpacked
}
