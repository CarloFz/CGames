--player animation
_player_ani_frames_start = 0; --player animation start sprite index
_player_ani_frames_num = 1;
_player_ani_frames_len = 10;
_player_ani_frames_now = 0;
_player_ani_frames_step = 0; --control animation frameRate. frame step: 0->frames len, then change animation frame.


--init player state
--params
---@player_ani_frames_start: player animation start sprite index
---@player_ani_frames_num: player animation frames totoal count
---@player_ani_frames_len: control animation frameRate
function initPlayer(player_ani_frames_start, player_ani_frames_num, player_ani_frames_len)
    _player_ani_frames_start = player_ani_frames_start;
    _player_ani_frames_num = player_ani_frames_num;
    _player_ani_frames_len = player_ani_frames_len;

    _player_ani_frames_now = 0;
    _player_ani_frames_step = 0;
end


function player_update()
    
end

function player_draw()
    _player_ani_frames_step += 1;
    if(_player_ani_frames_step >= _player_ani_frames_len)
    then
        _player_ani_frames_step = 0;
        _player_ani_frames_now += 1;
        if(_player_ani_frames_now >= _player_ani_frames_num) 
        then 
            _player_ani_frames_now = 0; 
        end
    end
    spr(_player_ani_frames_now, 0, 0);
end
