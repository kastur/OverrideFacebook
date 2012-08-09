.class public Lcom/facebook/orca/mqtt/MqttParameters;
.super Ljava/lang/Object;
.source "MqttParameters.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:S


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttParameters;->a:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/facebook/orca/mqtt/MqttParameters;->b:I

    .line 36
    iput-boolean p3, p0, Lcom/facebook/orca/mqtt/MqttParameters;->c:Z

    .line 37
    iput-object p4, p0, Lcom/facebook/orca/mqtt/MqttParameters;->d:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/facebook/orca/mqtt/MqttParameters;->e:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/facebook/orca/mqtt/MqttParameters;->f:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/facebook/orca/mqtt/MqttParameters;->g:Ljava/lang/String;

    .line 41
    iput-short p8, p0, Lcom/facebook/orca/mqtt/MqttParameters;->h:S

    .line 42
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->c:Z

    return v0
.end method

.method public final e()S
    .locals 1

    .prologue
    .line 61
    iget-short v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->h:S

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttParameters;->g:Ljava/lang/String;

    return-object v0
.end method
