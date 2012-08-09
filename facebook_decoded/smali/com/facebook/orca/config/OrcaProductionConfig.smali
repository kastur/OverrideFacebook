.class public Lcom/facebook/orca/config/OrcaProductionConfig;
.super Lcom/facebook/orca/config/AbstractOrcaConfig;
.source "OrcaProductionConfig.java"


# instance fields
.field private final a:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

.field private final b:Lcom/facebook/orca/config/MqttConfig;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/config/AbstractOrcaConfig;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 17
    new-instance v0, Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    const-string v1, "facebook.com"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/config/OrcaStandardHttpConfig;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->a:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    .line 18
    new-instance v0, Lcom/facebook/orca/config/MqttConfig;

    const-string v1, "orcart.facebook.com"

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/config/MqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->b:Lcom/facebook/orca/config/MqttConfig;

    .line 19
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic d()Lcom/facebook/orca/config/OrcaHttpConfig;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/orca/config/OrcaProductionConfig;->g()Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/facebook/orca/config/MqttConfig;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->b:Lcom/facebook/orca/config/MqttConfig;

    return-object v0
.end method

.method public final g()Lcom/facebook/orca/config/OrcaStandardHttpConfig;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->a:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    return-object v0
.end method
