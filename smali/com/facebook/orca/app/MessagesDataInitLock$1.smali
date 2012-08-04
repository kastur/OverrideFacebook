.class Lcom/facebook/orca/app/MessagesDataInitLock$1;
.super Ljava/lang/Object;
.source "MessagesDataInitLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesDataInitLock;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/MessagesDataInitLock;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesDataInitLock$1;->a:Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/app/MessagesDataInitLock$1;->a:Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesDataInitLock;->a(Lcom/facebook/orca/app/MessagesDataInitLock;)V

    .line 86
    return-void
.end method
