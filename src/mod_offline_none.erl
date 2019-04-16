%%%-------------------------------------------------------------------
%%% File    : mod_offline_none.erl
%%% Author  : Boris Chernov <icemedved@gmail.com>
%%% Created : 16 Apr 2019 by Boris Chernov <icemedved@gmail.com>
%%%
%%%
%%% ejabberd, Copyright (C) 2002-2018   ProcessOne
%%%
%%% This program is free software; you can redistribute it and/or
%%% modify it under the terms of the GNU General Public License as
%%% published by the Free Software Foundation; either version 2 of the
%%% License, or (at your option) any later version.
%%%
%%% This program is distributed in the hope that it will be useful,
%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%%% General Public License for more details.
%%%
%%% You should have received a copy of the GNU General Public License along
%%% with this program; if not, write to the Free Software Foundation, Inc.,
%%% 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%%%
%%%----------------------------------------------------------------------

-module(mod_offline_none).

-behaviour(mod_offline).

-export([init/2, store_message/1, pop_messages/2, remove_expired_messages/1,
	 remove_old_messages/2, remove_user/2, read_message_headers/2,
	 read_message/3, remove_message/3, read_all_messages/2,
	 remove_all_messages/2, count_messages/2, import/1]).

-include("xmpp.hrl").
-include("mod_offline.hrl").

%%%===================================================================
%%% API
%%%===================================================================
init(_Host, _Opts) ->
    ok.

store_message(#offline_msg{us = US, packet = Pkt, timestamp = TS} = M) ->
	ok.

pop_messages(LUser, LServer) ->
	{ok, []}.

remove_expired_messages(_LServer) ->
    {atomic, ok}.

remove_old_messages(_Days, _LServer) ->
    {atomic, ok}.

remove_user(LUser, LServer) ->
    {atomic, ok}.

read_message_headers(LUser, LServer) ->
	[].

read_message(_LUser, _LServer, I) ->
    error.

remove_message(_LUser, _LServer, I) ->
    ok.

read_all_messages(LUser, LServer) ->
    [].

remove_all_messages(LUser, LServer) ->
    {atomic, ok}.

count_messages(LUser, LServer) ->
    0.

import(Msg) ->
    {atomic, ok}.
