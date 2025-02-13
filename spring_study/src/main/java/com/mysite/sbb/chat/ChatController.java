package com.mysite.sbb.chat;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {

    private final SimpMessagingTemplate messagingTemplate;
    private final ChatService chatService;

    public ChatController(SimpMessagingTemplate messagingTemplate, ChatService chatService) {
        this.messagingTemplate = messagingTemplate;
        this.chatService = chatService;
    }

    @MessageMapping("/sendMessage")
    public void sendMessage(ChatMessage message) {
        System.out.println("Received message from client: " + message.getContent());
        String response = chatService.getAnswer(message.getContent());
        System.out.println("Generated response: " + response);

        ChatMessage botMessage = new ChatMessage();
        botMessage.setSender("Bot");
        botMessage.setContent(response);

        messagingTemplate.convertAndSend("/topic/public", botMessage);
    }
    
    @GetMapping("/chat")
    public String showChatPage() {
        return "chat"; // chat.html을 templates 폴더 안에서 찾습니다.
    }
}