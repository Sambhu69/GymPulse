package com.gympulse.model;

/**
 * FitnessClassModel represents a fitness class offered by the gym.
 */
public class FitnessClassModel {
    private int classId;
    private String className;
    private String description;
    private String instructor;
    private String scheduleDate;
    private String scheduleTime;
    private int capacity;
    private int enrolled;

    public FitnessClassModel() {}

    public FitnessClassModel(int classId, String className, String description, String instructor, String scheduleDate, String scheduleTime, int capacity, int enrolled) {
        this.classId = classId;
        this.className = className;
        this.description = description;
        this.instructor = instructor;
        this.scheduleDate = scheduleDate;
        this.scheduleTime = scheduleTime;
        this.capacity = capacity;
        this.enrolled = enrolled;
    }

    // Getters and Setters
    public int getClassId() { return classId; }
    public void setClassId(int classId) { this.classId = classId; }

    public String getClassName() { return className; }
    public void setClassName(String className) { this.className = className; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getInstructor() { return instructor; }
    public void setInstructor(String instructor) { this.instructor = instructor; }

    public String getScheduleDate() { return scheduleDate; }
    public void setScheduleDate(String scheduleDate) { this.scheduleDate = scheduleDate; }

    public String getScheduleTime() { return scheduleTime; }
    public void setScheduleTime(String scheduleTime) { this.scheduleTime = scheduleTime; }

    public int getCapacity() { return capacity; }
    public void setCapacity(int capacity) { this.capacity = capacity; }

    public int getEnrolled() { return enrolled; }
    public void setEnrolled(int enrolled) { this.enrolled = enrolled; }
}
