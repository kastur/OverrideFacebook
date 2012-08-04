.class public Lcom/facebook/orca/mqtt/messages/ConnectPayload;
.super Ljava/lang/Object;
.source "ConnectPayload.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->d:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->e:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->e:Ljava/lang/String;

    return-object v0
.end method
