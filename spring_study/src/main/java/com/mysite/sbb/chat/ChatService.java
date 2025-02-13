package com.mysite.sbb.chat;

import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

@Service
public class ChatService {

    private final Map<String, String> faq;

    public ChatService() {
        this.faq = new HashMap<>();
        // 키워드와 답변 추가
        faq.put("안녕", "안녕하세요! 저는 여러분을 돕기 위한 채팅봇이에요.");
        faq.put("스프링부트", "스프링부트는 빠르게 웹 애플리케이션을 개발할 수 있는 프레임워크입니다.");
        faq.put("날씨", "날씨는 지역마다 달라요! 검색 엔진을 활용해 확인해보세요.");
        faq.put("잘 지내?", "잘 지내고 있어요! 질문 있으시면 언제든지 물어보세요.");
        faq.put("자바란?", "자바는 객체 지향 프로그래밍 언어로, 다양한 플랫폼에서 실행 가능한 애플리케이션을 개발할 수 있습니다.");
        faq.put("고마워", "언제든지요! 또 궁금한 게 있으면 말씀해 주세요.");
        faq.put("잘가", "안녕히 가세요! 다음에 또 만나요.");
        faq.put("?", "현재 질문 가능한 키워드는: 안녕, 스프링부트, 날씨, 잘 지내?, 현재시간, 오늘날짜, 자바란?, 고마워, 잘가, ?, 도움말입니다.");
        faq.put("도움말", "현재 질문 가능한 키워드는: 안녕, 스프링부트, 날씨, 잘 지내?, 현재시간, 오늘날짜, 자바란?, 고마워, 잘가, ?, 도움말입니다.");
    }

    public String getAnswer(String question) {
        System.out.println("Received question: " + question);
        // 현재 시간 얻기
        String currentTime = getCurrentTime();
        String currentDay = getCurrentDay();
        
        // "현재시간" 질문에 대해 현재 시간을 포함시킴
        if (question.contains("현재시간")) {
            return "현재 시간은 " + currentTime + " 입니다.";
        }
        
        // "오늘날짜" 질문에 대해 현재 시간을 포함시킴
        if (question.contains("오늘날짜")) {
            return "오늘 날짜는 " + currentDay + " 입니다.";
        }
        
        String answer = faq.getOrDefault(question, "죄송합니다. 해당 질문에 대한 답변을 찾을 수 없습니다.");
        System.out.println("Returning answer: " + answer);
        return answer;
    }
    
    // 현재 시간을 포맷에 맞게 반환하는 메소드
    private String getCurrentTime() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
        LocalDateTime now = LocalDateTime.now();
        return now.format(formatter);
    }
    
    private String getCurrentDay() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        return now.format(formatter);
    }
    
    public void testChatService() {
        ChatService chatService = new ChatService();
        String response = chatService.getAnswer("안녕하세요");
        System.out.println(response); // 예상 출력: "안녕하세요! 무엇을 도와드릴까요?"
    }
}