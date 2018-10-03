-module(binary_search).
-export([binary_search/2]).

-include_lib("eunit/include/eunit.hrl").
% binary search algorithm for cerner_2^5_2018

binary_search(InputList, N) ->
  binary_search(InputList, N, 1, length(InputList), InputList).

binary_search(_InputList, _N, Left, Right, _OriginalList ) when Left > Right ->
    -1;
binary_search(_InputList, N, Left, Right, OriginalList ) when Left =< Right ->

  Middle = (Left + Right) div 2, 

  Item = lists:nth(Middle, OriginalList),

  case Item of
    N -> Middle; 
    _ -> case Item > N of
           true  -> binary_search(lists:sublist(OriginalList, Middle -1), N, Left, Middle-1,  OriginalList); 
           false -> binary_search(lists:nthtail(Middle, OriginalList), N, Middle+1, Right , OriginalList)
         end
  end.