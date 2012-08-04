.class public Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;
.super Ljava/lang/Object;
.source "ConnectPayloadBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->a:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->b:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->c:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->d:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->e:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/mqtt/messages/ConnectPayload;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    invoke-direct {v0, p0}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;-><init>(Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;)V

    return-object v0
.end method
