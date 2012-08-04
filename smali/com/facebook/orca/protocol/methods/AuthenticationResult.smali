.class public Lcom/facebook/orca/protocol/methods/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# instance fields
.field private final a:Lcom/facebook/orca/auth/FacebookCredentials;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/FacebookCredentials;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->a:Lcom/facebook/orca/auth/FacebookCredentials;

    .line 16
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->a:Lcom/facebook/orca/auth/FacebookCredentials;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->b:Ljava/lang/String;

    return-object v0
.end method
