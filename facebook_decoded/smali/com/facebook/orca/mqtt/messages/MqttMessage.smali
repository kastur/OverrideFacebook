.class public Lcom/facebook/orca/mqtt/messages/MqttMessage;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# instance fields
.field private final a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/mqtt/messages/MqttMessage;->a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

    .line 17
    iput-object p2, p0, Lcom/facebook/orca/mqtt/messages/MqttMessage;->b:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lcom/facebook/orca/mqtt/messages/MqttMessage;->c:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/MqttMessage;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/MqttMessage;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/MqttMessage;->a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a()I

    move-result v0

    return v0
.end method

.method public final f()Lcom/facebook/orca/mqtt/messages/FixedHeader;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/mqtt/messages/MqttMessage;->a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

    return-object v0
.end method
