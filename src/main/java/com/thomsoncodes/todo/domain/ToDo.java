package com.thomsoncodes.todo.domain;

import java.time.LocalDateTime;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class ToDo {
	
	@NotNull
	@Id
		@GeneratedValue(generator ="system-uuid")
		@GenericGenerator(name = "system-uuid", strategy = "uuid")
	private String id;
	@NotNull
	@NotBlank
	private String description;
	
	@Column(insertable = true, updatable = false)
	private LocalDateTime created;
	private LocalDateTime modified;
	private boolean completed;
		
	public ToDo(String descrption) {
		this.description = descrption;
	}
	
	@PrePersist
		void onCreate() {
		this.setCreated(LocalDateTime.now());
		this.setModified(LocalDateTime.now());
	}
	
	@PreUpdate
		void onUpdate() {
		this.setModified(LocalDateTime.now());
	}
	

}
