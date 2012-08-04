.class public Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;
.super Ljava/lang/Object;
.source "AuthenticateSsoMethod.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->b:Ljava/lang/String;

    return-object v0
.end method
