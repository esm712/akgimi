package com.kangkimleekojangcho.akgimi.user.domain;

import com.kangkimleekojangcho.akgimi.global.exception.ServerErrorException;
import com.kangkimleekojangcho.akgimi.global.exception.ServerErrorExceptionCode;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum RecommendNicknamePrefix {
    // prefix의 최대 길이는 5입니다. `열심히_하는`은 길이가 6이므로, prefix로 설정할 수 없습니다.
    노력하는,
    잘생긴,
    돌아다니는,
    부끄러운,
    어지러운,
    심란한,
    배고픈,
    피곤한,
    야근하는,
    조퇴하는,
    집_가는,
    정신_없는,
    누워_있는,
    ;
    @Override
    public String toString() {
        return this.name().replaceAll("_"," ");
    }

    public static String pick(int idx){
        if(idx>RecommendNicknamePrefix.values().length){
            throw new ServerErrorException(ServerErrorExceptionCode.CANNOT_RECOMMEND_NICKNAME);
        }
        return RecommendNicknamePrefix.values()[idx].toString();
    }

    public static int howMany() {
        return RecommendNicknamePrefix.values().length;
    }
}
