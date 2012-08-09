.class public Lcom/facebook/orca/mqtt/MqttSsl;
.super Ljava/lang/Object;
.source "MqttSsl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method
