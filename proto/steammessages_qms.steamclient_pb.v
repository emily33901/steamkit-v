
// Generated by vproto - Do not modify
module proto

import emily33901.vproto


[_allow_multiple_values]
enum EGameSearchAction {
k_egamesearchaction_none = 0
k_egamesearchaction_accept = 1
k_egamesearchaction_decline = 2
k_egamesearchaction_cancel = 3
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_egamesearchaction(e EGameSearchAction, num u32) []byte {
return vproto.pack_int32_field(int(e), num)
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_egamesearchaction(buf []byte, tag_wiretype vproto.WireType) ?(int, EGameSearchAction) {
i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
return i, EGameSearchAction(v)
}
[_allow_multiple_values]
enum EGameSearchResult {
k_egamesearchresult_invalid = 0
k_egamesearchresult_searchinprogress = 1
k_egamesearchresult_searchfailednohosts = 2
k_egamesearchresult_searchgamefound = 3
k_egamesearchresult_searchcompleteaccepted = 4
k_egamesearchresult_searchcompletedeclined = 5
k_egamesearchresult_searchcanceled = 6
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_egamesearchresult(e EGameSearchResult, num u32) []byte {
return vproto.pack_int32_field(int(e), num)
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_egamesearchresult(buf []byte, tag_wiretype vproto.WireType) ?(int, EGameSearchResult) {
i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
return i, EGameSearchResult(v)
}
pub struct GameSearchParam {
mut:
unknown_fields []vproto.UnknownField
pub mut:
key_name string
has_key_name bool
value []string
}
pub fn (o &GameSearchParam) pack() []byte {
mut res := []byte{}
if o.has_key_name {
res << vproto.pack_string_field(o.key_name, 1)
}

// [packed=false]
for _, x in o.value {
res << vproto.pack_string_field(x, 2)
}

return res
}

pub fn gamesearchparam_unpack(buf []byte) ?GameSearchParam {
mut res := GameSearchParam{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_key_name = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.key_name = v
i = ii
}

2 {
// [packed=false]
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.value << v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_gamesearchparam() GameSearchParam {
return GameSearchParam{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_gamesearchparam(o GameSearchParam, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_gamesearchparam(buf []byte, tag_wiretype vproto.WireType) ?(int, GameSearchParam) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := gamesearchparam_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingSearchForGameRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
action EGameSearchAction
has_action bool
params []GameSearchParam
player_min u32
has_player_min bool
player_max u32
has_player_max bool
steamidlobby u64
has_steamidlobby bool
searchid u64
has_searchid bool
}
pub fn (o &CQueuedMatchmakingSearchForGameRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_action {
res << zzz_vproto_internal_pack_egamesearchaction(o.action, 2)
}

// [packed=false]
for _, x in o.params {
res << zzz_vproto_internal_pack_gamesearchparam(x, 3)
}

if o.has_player_min {
res << vproto.pack_uint32_field(o.player_min, 4)
}

if o.has_player_max {
res << vproto.pack_uint32_field(o.player_max, 5)
}

if o.has_steamidlobby {
res << vproto.pack_64bit_field(o.steamidlobby, 6)
}

if o.has_searchid {
res << vproto.pack_uint64_field(o.searchid, 7)
}

return res
}

pub fn cqueuedmatchmakingsearchforgamerequest_unpack(buf []byte) ?CQueuedMatchmakingSearchForGameRequest {
mut res := CQueuedMatchmakingSearchForGameRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_action = true
ii, v := zzz_vproto_internal_unpack_egamesearchaction(cur_buf, tag_wiretype.wire_type)?
res.action = v
i = ii
}

3 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_gamesearchparam(cur_buf, tag_wiretype.wire_type)?
res.params << v
i = ii
}

4 {
res.has_player_min = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.player_min = v
i = ii
}

5 {
res.has_player_max = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.player_max = v
i = ii
}

6 {
res.has_steamidlobby = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.steamidlobby = v
i = ii
}

7 {
res.has_searchid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.searchid = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakingsearchforgamerequest() CQueuedMatchmakingSearchForGameRequest {
return CQueuedMatchmakingSearchForGameRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakingsearchforgamerequest(o CQueuedMatchmakingSearchForGameRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakingsearchforgamerequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingSearchForGameRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakingsearchforgamerequest_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingSearchForGameResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
gamesearchresult EGameSearchResult
has_gamesearchresult bool
searchid u64
has_searchid bool
seconds_time_estimate u32
has_seconds_time_estimate bool
poll_frequency u32
has_poll_frequency bool
count_searching u32
has_count_searching bool
players_in_match u32
has_players_in_match bool
players_accepted u32
has_players_accepted bool
connect_string string
has_connect_string bool
steamidhost u64
has_steamidhost bool
rtime_match_made u32
has_rtime_match_made bool
rtime_now u32
has_rtime_now bool
steamid_canceled_search u64
has_steamid_canceled_search bool
}
pub fn (o &CQueuedMatchmakingSearchForGameResponse) pack() []byte {
mut res := []byte{}
if o.has_gamesearchresult {
res << zzz_vproto_internal_pack_egamesearchresult(o.gamesearchresult, 1)
}

if o.has_searchid {
res << vproto.pack_uint64_field(o.searchid, 2)
}

if o.has_seconds_time_estimate {
res << vproto.pack_uint32_field(o.seconds_time_estimate, 3)
}

if o.has_poll_frequency {
res << vproto.pack_uint32_field(o.poll_frequency, 4)
}

if o.has_count_searching {
res << vproto.pack_uint32_field(o.count_searching, 5)
}

if o.has_players_in_match {
res << vproto.pack_uint32_field(o.players_in_match, 6)
}

if o.has_players_accepted {
res << vproto.pack_uint32_field(o.players_accepted, 7)
}

if o.has_connect_string {
res << vproto.pack_string_field(o.connect_string, 9)
}

if o.has_steamidhost {
res << vproto.pack_64bit_field(o.steamidhost, 10)
}

if o.has_rtime_match_made {
res << vproto.pack_uint32_field(o.rtime_match_made, 11)
}

if o.has_rtime_now {
res << vproto.pack_uint32_field(o.rtime_now, 12)
}

if o.has_steamid_canceled_search {
res << vproto.pack_64bit_field(o.steamid_canceled_search, 13)
}

return res
}

pub fn cqueuedmatchmakingsearchforgameresponse_unpack(buf []byte) ?CQueuedMatchmakingSearchForGameResponse {
mut res := CQueuedMatchmakingSearchForGameResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_gamesearchresult = true
ii, v := zzz_vproto_internal_unpack_egamesearchresult(cur_buf, tag_wiretype.wire_type)?
res.gamesearchresult = v
i = ii
}

2 {
res.has_searchid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.searchid = v
i = ii
}

3 {
res.has_seconds_time_estimate = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.seconds_time_estimate = v
i = ii
}

4 {
res.has_poll_frequency = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.poll_frequency = v
i = ii
}

5 {
res.has_count_searching = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.count_searching = v
i = ii
}

6 {
res.has_players_in_match = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.players_in_match = v
i = ii
}

7 {
res.has_players_accepted = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.players_accepted = v
i = ii
}

9 {
res.has_connect_string = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.connect_string = v
i = ii
}

10 {
res.has_steamidhost = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.steamidhost = v
i = ii
}

11 {
res.has_rtime_match_made = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.rtime_match_made = v
i = ii
}

12 {
res.has_rtime_now = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.rtime_now = v
i = ii
}

13 {
res.has_steamid_canceled_search = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.steamid_canceled_search = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakingsearchforgameresponse() CQueuedMatchmakingSearchForGameResponse {
return CQueuedMatchmakingSearchForGameResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakingsearchforgameresponse(o CQueuedMatchmakingSearchForGameResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakingsearchforgameresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingSearchForGameResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakingsearchforgameresponse_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingGameHostSearchForPlayersRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
action EGameSearchAction
has_action bool
params []GameSearchParam
player_min u32
has_player_min bool
player_max u32
has_player_max bool
player_max_team_size u32
has_player_max_team_size bool
connection_string string
has_connection_string bool
searchid u64
has_searchid bool
}
pub fn (o &CQueuedMatchmakingGameHostSearchForPlayersRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_action {
res << zzz_vproto_internal_pack_egamesearchaction(o.action, 2)
}

// [packed=false]
for _, x in o.params {
res << zzz_vproto_internal_pack_gamesearchparam(x, 3)
}

if o.has_player_min {
res << vproto.pack_uint32_field(o.player_min, 4)
}

if o.has_player_max {
res << vproto.pack_uint32_field(o.player_max, 5)
}

if o.has_player_max_team_size {
res << vproto.pack_uint32_field(o.player_max_team_size, 6)
}

if o.has_connection_string {
res << vproto.pack_string_field(o.connection_string, 7)
}

if o.has_searchid {
res << vproto.pack_uint64_field(o.searchid, 8)
}

return res
}

pub fn cqueuedmatchmakinggamehostsearchforplayersrequest_unpack(buf []byte) ?CQueuedMatchmakingGameHostSearchForPlayersRequest {
mut res := CQueuedMatchmakingGameHostSearchForPlayersRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_action = true
ii, v := zzz_vproto_internal_unpack_egamesearchaction(cur_buf, tag_wiretype.wire_type)?
res.action = v
i = ii
}

3 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_gamesearchparam(cur_buf, tag_wiretype.wire_type)?
res.params << v
i = ii
}

4 {
res.has_player_min = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.player_min = v
i = ii
}

5 {
res.has_player_max = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.player_max = v
i = ii
}

6 {
res.has_player_max_team_size = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.player_max_team_size = v
i = ii
}

7 {
res.has_connection_string = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.connection_string = v
i = ii
}

8 {
res.has_searchid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.searchid = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakinggamehostsearchforplayersrequest() CQueuedMatchmakingGameHostSearchForPlayersRequest {
return CQueuedMatchmakingGameHostSearchForPlayersRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakinggamehostsearchforplayersrequest(o CQueuedMatchmakingGameHostSearchForPlayersRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakinggamehostsearchforplayersrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingGameHostSearchForPlayersRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakinggamehostsearchforplayersrequest_unpack(v)?
return i, unpacked
}
pub struct PlayerFound {
mut:
unknown_fields []vproto.UnknownField
pub mut:
steamid u64
has_steamid bool
action EGameSearchAction
has_action bool
params []GameSearchParam
team_number u32
has_team_number bool
}
pub fn (o &PlayerFound) pack() []byte {
mut res := []byte{}
if o.has_steamid {
res << vproto.pack_64bit_field(o.steamid, 1)
}

if o.has_action {
res << zzz_vproto_internal_pack_egamesearchaction(o.action, 2)
}

// [packed=false]
for _, x in o.params {
res << zzz_vproto_internal_pack_gamesearchparam(x, 3)
}

if o.has_team_number {
res << vproto.pack_uint32_field(o.team_number, 4)
}

return res
}

pub fn playerfound_unpack(buf []byte) ?PlayerFound {
mut res := PlayerFound{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_steamid = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.steamid = v
i = ii
}

2 {
res.has_action = true
ii, v := zzz_vproto_internal_unpack_egamesearchaction(cur_buf, tag_wiretype.wire_type)?
res.action = v
i = ii
}

3 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_gamesearchparam(cur_buf, tag_wiretype.wire_type)?
res.params << v
i = ii
}

4 {
res.has_team_number = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.team_number = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_playerfound() PlayerFound {
return PlayerFound{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_playerfound(o PlayerFound, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_playerfound(buf []byte, tag_wiretype vproto.WireType) ?(int, PlayerFound) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := playerfound_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingGameHostSearchForPlayersResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
gamesearchresult EGameSearchResult
has_gamesearchresult bool
searchid u64
has_searchid bool
poll_frequency u32
has_poll_frequency bool
matchid u64
has_matchid bool
players []PlayerFound
rtime_match_made u32
has_rtime_match_made bool
rtime_now u32
has_rtime_now bool
}
pub fn (o &CQueuedMatchmakingGameHostSearchForPlayersResponse) pack() []byte {
mut res := []byte{}
if o.has_gamesearchresult {
res << zzz_vproto_internal_pack_egamesearchresult(o.gamesearchresult, 1)
}

if o.has_searchid {
res << vproto.pack_uint64_field(o.searchid, 2)
}

if o.has_poll_frequency {
res << vproto.pack_uint32_field(o.poll_frequency, 3)
}

if o.has_matchid {
res << vproto.pack_uint64_field(o.matchid, 4)
}

// [packed=false]
for _, x in o.players {
res << zzz_vproto_internal_pack_playerfound(x, 5)
}

if o.has_rtime_match_made {
res << vproto.pack_uint32_field(o.rtime_match_made, 6)
}

if o.has_rtime_now {
res << vproto.pack_uint32_field(o.rtime_now, 7)
}

return res
}

pub fn cqueuedmatchmakinggamehostsearchforplayersresponse_unpack(buf []byte) ?CQueuedMatchmakingGameHostSearchForPlayersResponse {
mut res := CQueuedMatchmakingGameHostSearchForPlayersResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_gamesearchresult = true
ii, v := zzz_vproto_internal_unpack_egamesearchresult(cur_buf, tag_wiretype.wire_type)?
res.gamesearchresult = v
i = ii
}

2 {
res.has_searchid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.searchid = v
i = ii
}

3 {
res.has_poll_frequency = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.poll_frequency = v
i = ii
}

4 {
res.has_matchid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.matchid = v
i = ii
}

5 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_playerfound(cur_buf, tag_wiretype.wire_type)?
res.players << v
i = ii
}

6 {
res.has_rtime_match_made = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.rtime_match_made = v
i = ii
}

7 {
res.has_rtime_now = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.rtime_now = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakinggamehostsearchforplayersresponse() CQueuedMatchmakingGameHostSearchForPlayersResponse {
return CQueuedMatchmakingGameHostSearchForPlayersResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakinggamehostsearchforplayersresponse(o CQueuedMatchmakingGameHostSearchForPlayersResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakinggamehostsearchforplayersresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingGameHostSearchForPlayersResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakinggamehostsearchforplayersresponse_unpack(v)?
return i, unpacked
}
pub struct PlayerResult {
mut:
unknown_fields []vproto.UnknownField
pub mut:
steamid u64
has_steamid bool
value u32
has_value bool
}
pub fn (o &PlayerResult) pack() []byte {
mut res := []byte{}
if o.has_steamid {
res << vproto.pack_64bit_field(o.steamid, 1)
}

if o.has_value {
res << vproto.pack_uint32_field(o.value, 2)
}

return res
}

pub fn playerresult_unpack(buf []byte) ?PlayerResult {
mut res := PlayerResult{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_steamid = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.steamid = v
i = ii
}

2 {
res.has_value = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.value = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_playerresult() PlayerResult {
return PlayerResult{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_playerresult(o PlayerResult, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_playerresult(buf []byte, tag_wiretype vproto.WireType) ?(int, PlayerResult) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := playerresult_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingGameHostSubmitPlayerResultRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
matchid u64
has_matchid bool
player_results []PlayerResult
}
pub fn (o &CQueuedMatchmakingGameHostSubmitPlayerResultRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_matchid {
res << vproto.pack_uint64_field(o.matchid, 2)
}

// [packed=false]
for _, x in o.player_results {
res << zzz_vproto_internal_pack_playerresult(x, 3)
}

return res
}

pub fn cqueuedmatchmakinggamehostsubmitplayerresultrequest_unpack(buf []byte) ?CQueuedMatchmakingGameHostSubmitPlayerResultRequest {
mut res := CQueuedMatchmakingGameHostSubmitPlayerResultRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_matchid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.matchid = v
i = ii
}

3 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_playerresult(cur_buf, tag_wiretype.wire_type)?
res.player_results << v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakinggamehostsubmitplayerresultrequest() CQueuedMatchmakingGameHostSubmitPlayerResultRequest {
return CQueuedMatchmakingGameHostSubmitPlayerResultRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakinggamehostsubmitplayerresultrequest(o CQueuedMatchmakingGameHostSubmitPlayerResultRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakinggamehostsubmitplayerresultrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingGameHostSubmitPlayerResultRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakinggamehostsubmitplayerresultrequest_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingGameHostSubmitPlayerResultResponse {
mut:
unknown_fields []vproto.UnknownField
}
pub fn (o &CQueuedMatchmakingGameHostSubmitPlayerResultResponse) pack() []byte {
res := []byte{}
return res
}

pub fn cqueuedmatchmakinggamehostsubmitplayerresultresponse_unpack(buf []byte) ?CQueuedMatchmakingGameHostSubmitPlayerResultResponse {
res := CQueuedMatchmakingGameHostSubmitPlayerResultResponse{}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakinggamehostsubmitplayerresultresponse() CQueuedMatchmakingGameHostSubmitPlayerResultResponse {
return CQueuedMatchmakingGameHostSubmitPlayerResultResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakinggamehostsubmitplayerresultresponse(o CQueuedMatchmakingGameHostSubmitPlayerResultResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakinggamehostsubmitplayerresultresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingGameHostSubmitPlayerResultResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakinggamehostsubmitplayerresultresponse_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingGameHostEndGameRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
matchid u64
has_matchid bool
}
pub fn (o &CQueuedMatchmakingGameHostEndGameRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_matchid {
res << vproto.pack_uint64_field(o.matchid, 2)
}

return res
}

pub fn cqueuedmatchmakinggamehostendgamerequest_unpack(buf []byte) ?CQueuedMatchmakingGameHostEndGameRequest {
mut res := CQueuedMatchmakingGameHostEndGameRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_matchid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.matchid = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakinggamehostendgamerequest() CQueuedMatchmakingGameHostEndGameRequest {
return CQueuedMatchmakingGameHostEndGameRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakinggamehostendgamerequest(o CQueuedMatchmakingGameHostEndGameRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakinggamehostendgamerequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingGameHostEndGameRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakinggamehostendgamerequest_unpack(v)?
return i, unpacked
}
pub struct CQueuedMatchmakingGameHostEndGameResponse {
mut:
unknown_fields []vproto.UnknownField
}
pub fn (o &CQueuedMatchmakingGameHostEndGameResponse) pack() []byte {
res := []byte{}
return res
}

pub fn cqueuedmatchmakinggamehostendgameresponse_unpack(buf []byte) ?CQueuedMatchmakingGameHostEndGameResponse {
res := CQueuedMatchmakingGameHostEndGameResponse{}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cqueuedmatchmakinggamehostendgameresponse() CQueuedMatchmakingGameHostEndGameResponse {
return CQueuedMatchmakingGameHostEndGameResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cqueuedmatchmakinggamehostendgameresponse(o CQueuedMatchmakingGameHostEndGameResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cqueuedmatchmakinggamehostendgameresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CQueuedMatchmakingGameHostEndGameResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cqueuedmatchmakinggamehostendgameresponse_unpack(v)?
return i, unpacked
}
