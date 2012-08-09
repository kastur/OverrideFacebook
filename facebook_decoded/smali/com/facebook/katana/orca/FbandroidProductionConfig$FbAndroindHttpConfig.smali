.class Lcom/facebook/katana/orca/FbandroidProductionConfig$FbAndroindHttpConfig;
.super Lcom/facebook/orca/config/OrcaStandardHttpConfig;
.source "FbandroidProductionConfig.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/orca/FbandroidProductionConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/orca/FbandroidProductionConfig;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig$FbAndroindHttpConfig;->a:Lcom/facebook/katana/orca/FbandroidProductionConfig;

    .line 39
    const-string v0, "facebook.com"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/config/OrcaStandardHttpConfig;-><init>(Ljava/lang/String;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidProductionConfig$FbAndroindHttpConfig;->a:Lcom/facebook/katana/orca/FbandroidProductionConfig;

    invoke-static {v0}, Lcom/facebook/katana/orca/FbandroidProductionConfig;->a(Lcom/facebook/katana/orca/FbandroidProductionConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/net/HttpOperation;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
