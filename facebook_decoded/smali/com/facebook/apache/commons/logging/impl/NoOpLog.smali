.class public Lcom/facebook/apache/commons/logging/impl/NoOpLog;
.super Ljava/lang/Object;
.source "NoOpLog.java"

# interfaces
.implements Lcom/facebook/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    return-void
.end method
