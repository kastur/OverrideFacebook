.class public Lcom/facebook/katana/UserTask;
.super Ljava/lang/Thread;
.source "UserTask.java"


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/katana/UserTask;->a:Landroid/os/Handler;

    .line 27
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/facebook/katana/UserTask;->start()V

    .line 35
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/facebook/katana/UserTask;->a()V

    .line 41
    iget-object v0, p0, Lcom/facebook/katana/UserTask;->a:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/UserTask$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/UserTask$1;-><init>(Lcom/facebook/katana/UserTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
