.class final Lcom/google/common/collect/MapMaker$1;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 120
    return-void
.end method
