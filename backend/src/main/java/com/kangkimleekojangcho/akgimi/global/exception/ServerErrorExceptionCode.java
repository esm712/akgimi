package com.kangkimleekojangcho.akgimi.global.exception;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum ServerErrorExceptionCode {
    NO_OIDC_PUBLIC_KEY("001", "적절한 OIDC Public Key가 존재하지 않습니다."),
    CANNOT_GET_ID_TOKEN("002", "카카오 서버로부터 ID Token을 가져올 수 없습니다."),
    NETWORK_ERROR("003", "통신 과정에서 오류가 발생했습니다."),
    JSON_PARSE_ERROR("004", "Json을 파싱하는 과정에서 오류가 발생했습니다."),
    CANNOT_FIND_KID("005", "Kid를 찾지 못했습니다."),
    INVALID_URI("006", "유효하지 않은 Request URI입니다."),
    CANNOT_FIND_USER("007", "유저를 찾을 수 없습니다."),
    S3_BAD_CONNECTION("008", "S3에 연결할 수 없습니다."),
    CANNOT_RECOMMEND_NICKNAME("009", "닉네임을 추천할 수 없습니다."),
    CANNOT_GENERATE_RANDOM_NICKNAME("010", "랜덤한 닉네임을 더 이상 만들 수 없습니다."),
    CANNOT_HASH("010","해시할 수 없습니다"),
    CANNOT_FIND_AGGREGATE_TABLE("011", "집계가 불가능합니다.");
    private final String code;
    private final String descriptionMessage;
}
