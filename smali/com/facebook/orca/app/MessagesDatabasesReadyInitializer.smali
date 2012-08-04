.class public Lcom/facebook/orca/app/MessagesDatabasesReadyInitializer;
.super Ljava/lang/Object;
.source "MessagesDatabasesReadyInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Lcom/facebook/orca/app/MessagesDataInitLock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/MessagesDataInitLock;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesDatabasesReadyInitializer;->a:Lcom/facebook/orca/app/MessagesDataInitLock;

    .line 22
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/app/MessagesDatabasesReadyInitializer;->a:Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/MessagesDataInitLock;->a()V

    .line 35
    return-void
.end method
