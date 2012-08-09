.class public Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;
.super Ljava/lang/Object;
.source "WaitingThreadAborter.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;->b:Z

    .line 51
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;->a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;->a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b()V

    .line 54
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;->a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    .line 64
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;->b:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b()V

    .line 66
    :cond_0
    return-void
.end method
