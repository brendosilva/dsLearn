package com.devsuperior.dslearnbds.entities;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson{
    private String textContent;
    private String videoUrl;

    public Content(){}

    public Content(Long id, String title, Integer position, Section section, String textContent, String videoUrl) {
        super(id, title, position, section);
        this.textContent = textContent;
        this.videoUrl = videoUrl;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public String getTextContent() {
        return textContent;
    }

    public void setTextContent(String textContent) {
        this.textContent = textContent;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }
}
