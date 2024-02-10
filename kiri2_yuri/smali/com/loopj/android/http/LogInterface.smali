.class public interface abstract Lcom/loopj/android/http/LogInterface;
.super Ljava/lang/Object;
.source "LogInterface.java"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field public static final WTF:I = 0x8


# virtual methods
.method public abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract getLoggingLevel()I
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract isLoggingEnabled()Z
.end method

.method public abstract setLoggingEnabled(Z)V
.end method

.method public abstract setLoggingLevel(I)V
.end method

.method public abstract shouldLog(I)Z
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract wtf(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
