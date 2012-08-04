.class Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;
.super Ljava/lang/Object;
.source "OrcaHttpClientImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 217
    iget v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->b:I

    iget-object v1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/facebook/orca/debug/BLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->a:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->b:I

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->a()Z

    move-result v0

    return v0
.end method
