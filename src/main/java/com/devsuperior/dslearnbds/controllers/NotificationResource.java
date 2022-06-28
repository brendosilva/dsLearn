package com.devsuperior.dslearnbds.controllers;

import com.devsuperior.dslearnbds.dto.NotificationDto;
import com.devsuperior.dslearnbds.dto.UserDto;
import com.devsuperior.dslearnbds.services.NotificationService;
import com.devsuperior.dslearnbds.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/notifications")
public class NotificationResource {

    @Autowired
    private NotificationService notificationService;

    @GetMapping
    public ResponseEntity<Page<NotificationDto>> notificationsForCurrentUser(Pageable pageable) {
        Page<NotificationDto> pageDto = notificationService.notifcationsForCurrentUser(pageable);
        return ResponseEntity.ok().body(pageDto);
    }

}
