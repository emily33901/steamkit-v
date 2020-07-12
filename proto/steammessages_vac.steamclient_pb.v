// Generated by vproto - Do not modify
module proto

import emily33901.vproto

pub struct CFileVerification_SignatureCheck_Request {
mut:
	unknown_fields             []vproto.UnknownField
pub mut:
	steamid                    u64
	has_steamid                bool
	appid                      u32
	has_appid                  bool
	file_size                  u64
	has_file_size              bool
	file_timestamp             u32
	has_file_timestamp         bool
	file_timestamp2            u32
	has_file_timestamp2        bool
	signature_result           u32
	has_signature_result       bool
	filename                   string
	has_filename               bool
	client_package_version     u32
	has_client_package_version bool
	sha1hash                   []byte
	has_sha1hash               bool
}

pub fn (o &CFileVerification_SignatureCheck_Request) pack() []byte {
	mut res := []byte{}
	if o.has_steamid {
		res << vproto.pack_64bit_field(o.steamid, 1)
	}
	if o.has_appid {
		res << vproto.pack_uint32_field(o.appid, 2)
	}
	if o.has_file_size {
		res << vproto.pack_uint64_field(o.file_size, 3)
	}
	if o.has_file_timestamp {
		res << vproto.pack_uint32_field(o.file_timestamp, 4)
	}
	if o.has_file_timestamp2 {
		res << vproto.pack_uint32_field(o.file_timestamp2, 5)
	}
	if o.has_signature_result {
		res << vproto.pack_uint32_field(o.signature_result, 6)
	}
	if o.has_filename {
		res << vproto.pack_string_field(o.filename, 7)
	}
	if o.has_client_package_version {
		res << vproto.pack_uint32_field(o.client_package_version, 8)
	}
	if o.has_sha1hash {
		res << vproto.pack_bytes_field(o.sha1hash, 9)
	}
	return res
}

pub fn cfileverification_signaturecheck_request_unpack(buf []byte) ?CFileVerification_SignatureCheck_Request {
	mut res := CFileVerification_SignatureCheck_Request{}
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
				res.has_steamid = true
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.steamid = v
				i = ii
			}
			2 {
				res.has_appid = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.appid = v
				i = ii
			}
			3 {
				res.has_file_size = true
				ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
				res.file_size = v
				i = ii
			}
			4 {
				res.has_file_timestamp = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.file_timestamp = v
				i = ii
			}
			5 {
				res.has_file_timestamp2 = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.file_timestamp2 = v
				i = ii
			}
			6 {
				res.has_signature_result = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.signature_result = v
				i = ii
			}
			7 {
				res.has_filename = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.filename = v
				i = ii
			}
			8 {
				res.has_client_package_version = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.client_package_version = v
				i = ii
			}
			9 {
				res.has_sha1hash = true
				ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
				res.sha1hash = v
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

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cfileverification_signaturecheck_request() CFileVerification_SignatureCheck_Request {
	return CFileVerification_SignatureCheck_Request{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cfileverification_signaturecheck_request(o CFileVerification_SignatureCheck_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cfileverification_signaturecheck_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CFileVerification_SignatureCheck_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cfileverification_signaturecheck_request_unpack(v)?
	return i, unpacked
}

pub struct CFileVerification_SignatureCheck_Response {
mut:
	unknown_fields     []vproto.UnknownField
pub mut:
	deny_operation     bool
	has_deny_operation bool
}

pub fn (o &CFileVerification_SignatureCheck_Response) pack() []byte {
	mut res := []byte{}
	if o.has_deny_operation {
		res << vproto.pack_bool_field(o.deny_operation, 1)
	}
	return res
}

pub fn cfileverification_signaturecheck_response_unpack(buf []byte) ?CFileVerification_SignatureCheck_Response {
	mut res := CFileVerification_SignatureCheck_Response{}
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
				res.has_deny_operation = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.deny_operation = v
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

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cfileverification_signaturecheck_response() CFileVerification_SignatureCheck_Response {
	return CFileVerification_SignatureCheck_Response{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cfileverification_signaturecheck_response(o CFileVerification_SignatureCheck_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cfileverification_signaturecheck_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CFileVerification_SignatureCheck_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cfileverification_signaturecheck_response_unpack(v)?
	return i, unpacked
}

pub struct CFileVerification_SteamServiceCheck_Request {
mut:
	unknown_fields             []vproto.UnknownField
pub mut:
	service_status             u32
	has_service_status         bool
	client_package_version     u32
	has_client_package_version bool
	launcher_type              u32
	has_launcher_type          bool
	os_type                    u32
	has_os_type                bool
	service_repair             u32
	has_service_repair         bool
}

pub fn (o &CFileVerification_SteamServiceCheck_Request) pack() []byte {
	mut res := []byte{}
	if o.has_service_status {
		res << vproto.pack_uint32_field(o.service_status, 2)
	}
	if o.has_client_package_version {
		res << vproto.pack_uint32_field(o.client_package_version, 3)
	}
	if o.has_launcher_type {
		res << vproto.pack_uint32_field(o.launcher_type, 4)
	}
	if o.has_os_type {
		res << vproto.pack_uint32_field(o.os_type, 5)
	}
	if o.has_service_repair {
		res << vproto.pack_uint32_field(o.service_repair, 6)
	}
	return res
}

pub fn cfileverification_steamservicecheck_request_unpack(buf []byte) ?CFileVerification_SteamServiceCheck_Request {
	mut res := CFileVerification_SteamServiceCheck_Request{}
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			2 {
				res.has_service_status = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.service_status = v
				i = ii
			}
			3 {
				res.has_client_package_version = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.client_package_version = v
				i = ii
			}
			4 {
				res.has_launcher_type = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.launcher_type = v
				i = ii
			}
			5 {
				res.has_os_type = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.os_type = v
				i = ii
			}
			6 {
				res.has_service_repair = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.service_repair = v
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

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cfileverification_steamservicecheck_request() CFileVerification_SteamServiceCheck_Request {
	return CFileVerification_SteamServiceCheck_Request{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cfileverification_steamservicecheck_request(o CFileVerification_SteamServiceCheck_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cfileverification_steamservicecheck_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CFileVerification_SteamServiceCheck_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cfileverification_steamservicecheck_request_unpack(v)?
	return i, unpacked
}

pub struct CFileVerification_SteamServiceCheck_Response {
mut:
	unknown_fields     []vproto.UnknownField
pub mut:
	attempt_repair     bool
	has_attempt_repair bool
}

pub fn (o &CFileVerification_SteamServiceCheck_Response) pack() []byte {
	mut res := []byte{}
	if o.has_attempt_repair {
		res << vproto.pack_bool_field(o.attempt_repair, 1)
	}
	return res
}

pub fn cfileverification_steamservicecheck_response_unpack(buf []byte) ?CFileVerification_SteamServiceCheck_Response {
	mut res := CFileVerification_SteamServiceCheck_Response{}
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
				res.has_attempt_repair = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.attempt_repair = v
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

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cfileverification_steamservicecheck_response() CFileVerification_SteamServiceCheck_Response {
	return CFileVerification_SteamServiceCheck_Response{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cfileverification_steamservicecheck_response(o CFileVerification_SteamServiceCheck_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cfileverification_steamservicecheck_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CFileVerification_SteamServiceCheck_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cfileverification_steamservicecheck_response_unpack(v)?
	return i, unpacked
}
