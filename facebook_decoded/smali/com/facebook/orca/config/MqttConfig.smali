.class public Lcom/facebook/orca/config/MqttConfig;
.super Ljava/lang/Object;
.source "MqttConfig.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/config/MqttConfig;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/facebook/orca/config/MqttConfig;->b:I

    .line 19
    iput-boolean p3, p0, Lcom/facebook/orca/config/MqttConfig;->c:Z

    .line 20
    return-void
.end method

.method public static d()S
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/config/MqttConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/facebook/orca/config/MqttConfig;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/facebook/orca/config/MqttConfig;->c:Z

    return v0
.end method
