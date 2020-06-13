package com.zjgsu.entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "record", schema = "embedded", catalog = "")
public class RecordEntity {
    private String recordId;
    private Integer frame;
    private Integer mq4A;
    private Integer mq4D;
    private Timestamp recordTime;

    @Id
    @Column(name = "record_id")
    public String getRecordId() {
        return recordId;
    }

    public void setRecordId(String recordId) {
        this.recordId = recordId;
    }

    @Basic
    @Column(name = "frame")
    public Integer getFrame() {
        return frame;
    }

    public void setFrame(Integer frame) {
        this.frame = frame;
    }

    @Basic
    @Column(name = "mq4_a")
    public Integer getMq4A() {
        return mq4A;
    }

    public void setMq4A(Integer mq4A) {
        this.mq4A = mq4A;
    }

    @Basic
    @Column(name = "mq4_d")
    public Integer getMq4D() {
        return mq4D;
    }

    public void setMq4D(Integer mq4D) {
        this.mq4D = mq4D;
    }

    @Basic
    @Column(name = "record_time")
    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RecordEntity that = (RecordEntity) o;
        return recordId == that.recordId &&
                Objects.equals(frame, that.frame) &&
                Objects.equals(mq4A, that.mq4A) &&
                Objects.equals(mq4D, that.mq4D) &&
                Objects.equals(recordTime, that.recordTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(recordId, frame, mq4A, mq4D, recordTime);
    }
}
