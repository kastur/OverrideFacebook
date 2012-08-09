.class public Lcom/facebook/katana/orca/FbandroidProductionConfig;
.super Ljava/lang/Object;
.source "FbandroidProductionConfig.java"

# interfaces
.implements Lcom/facebook/orca/config/OrcaConfig;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

.field private final e:Lcom/facebook/orca/config/MqttConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->a:Landroid/content/Context;

    .line 30
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->b:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/facebook/katana/UserAgent;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->c:I

    .line 32
    new-instance v0, Lcom/facebook/katana/orca/FbandroidProductionConfig$FbAndroindHttpConfig;

    invoke-direct {v0, p0}, Lcom/facebook/katana/orca/FbandroidProductionConfig$FbAndroindHttpConfig;-><init>(Lcom/facebook/katana/orca/FbandroidProductionConfig;)V

    iput-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->d:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    .line 33
    new-instance v0, Lcom/facebook/orca/config/MqttConfig;

    const-string v1, "orcart.facebook.com"

    const/16 v2, 0x22b3

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/config/MqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->e:Lcom/facebook/orca/config/MqttConfig;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/orca/FbandroidProductionConfig;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/UserAgent;->a(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/facebook/orca/config/OrcaHttpConfig;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->d:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    return-object v0
.end method

.method public final e()Lcom/facebook/orca/config/MqttConfig;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->e:Lcom/facebook/orca/config/MqttConfig;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig;->c:I

    return v0
.end method
