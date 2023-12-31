"use client";
import React, { useRef, useState, useEffect } from "react";
import Link from "next/link";
import axios from "axios";
import { useRouter } from "next/navigation";
import { BasicButton } from "@/components/Login/BasicButton";
import Image from "next/image";

interface RegisterInfo {
  title: string;
  menual: string;
}

export default function Signup() {
  const [isLoading, setIsLoading] = useState<boolean>(true); // 페이지 로딩 중인지 확인하기 위하여
  const [nickname, setNickname] = useState<string>("oo");
  const router = useRouter();

  let token: string = "";

  useEffect(() => {
    console.log("웰컴페이지 도착");
    if (typeof window !== "undefined") {
      token = window.localStorage.getItem("access_token");
      console.log(window.localStorage.getItem("access_token"));
    }
  }, []);

  // 회원 정보 조회
  // const getUserInfo = async () => {
  //   const formData = new FormData();
  //   formData.append("nickname", nickname); // 파일 첨부

  //   await axios
  //     .post("/api/user/nickname", formData, {
  //       headers: {
  //         Authorization: `Bearer ${token}`,
  //         "Content-Type": "multipart/form-data",
  //       },
  //     })
  //     .then((response) => {
  //       // setNickname();
  //     });
  // };
  // 버튼 클릭시 함수

  const handleClick = async () => {
    router.replace("/login");

    // await axios
    //   .post("/api/user/nickname", formData, {
    //     headers: {
    //       Authorization: `Bearer ${token}`,
    //       "Content-Type": "multipart/form-data",
    //     },
    //   })
    //   .then((response) => {
    //     // setNickname();
    //   });
  };

  useEffect(() => setIsLoading(false), []);
  return (
    <div className="h-full w-full">
      {isLoading ? (
        <div>로딩중</div>
      ) : (
        <div className="p-9 relative h-full w-full flex flex-col items-center">
          <div>
            <Image
              src="/images/login success.png"
              alt="로고 사진"
              width={200} // 실제 이미지의 가로 크기로 설정하세요
              height={200} // 실제 이미지의 세로 크기로 설정하세요
            ></Image>
            <div className="header text-[22px] pt-2 pb-[14px] font-bold">
              {window.sessionStorage.getItem("nickname")}님<br />
              아끼머가 되신 걸 환영해요
            </div>
          </div>

          <div className="absolute inset-x-0 w-full bottom-0 mb-8">
            <div className="flex justify-around my-3 w-full">
              <BasicButton
                msg={"LOGIN"}
                handleClick={() => handleClick()}
              ></BasicButton>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
